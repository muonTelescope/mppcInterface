#!/bin/bash
# 2019-03-11 Sawaiz, XHE
# 2022-08-19 Sawaiz: added FPGA, GPS, UPS tools, and automated I2C, SPI, and UART
#                    Automatically set hostname, generate swapfile for building fpga
#                    tools, Tested-xxxx-xx-xx
# Setup, install requirements

# Exit if any errors occour
set -e

# Check if running as root
if [[ $(id -u) -ne 0 ]]; then
  echo "Please run as root"
  exit
fi

read -e -s -p "Change Root (pi) Password to: " rootPasswd
echo ""
read -e -p "Add User, Username: " userName
read -e -s -p "$userName Password: " userPasswd
echo ""

# Reset timer to read length of install script
SECONDS=0

#Change root (pi) password
echo "pi:$rootPasswd" | chpasswd

# Generate hostname, muonTelescope-<last three octets of eth0 MAC adress>
host=muonTelescope-`cat /sys/class/net/eth0/address | cut -d: -f4- | sed 's/://g' | tr [:lower:] [:upper:]`

#Assign existing hostname to $hostn
hostn=$(cat /etc/hostname)

#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$host/g" /etc/hosts
sudo sed -i "s/$hostn/$host/g" /etc/hostname

#Create the user
useradd -m -G sudo $userName
echo "$userName:$userPasswd" | chpasswd

# Increase swap size, 1GB ram is not enough to complile some FPGA tools, 1GB pi needs 4GB!
dphys-swapfile swapoff
sed -i "s/CONF_SWAPSIZE=100/CONF_SWAPSIZE=4096/g" /etc/dphys-swapfile
sed -i "s/#CONF_MAXSWAP=2048/CONF_MAXSWAP=4096/g" /etc/dphys-swapfile
dphys-swapfile setup
dphys-swapfile swapon

# Or create a temp swap file perhaps?
#sudo dd if=/dev/zero of=/swapfile1GB bs=1M count=1024
#sudo mkswap /swapfile1GB
#sudo swapon /swapfile1GB

#Update/upgrade
apt update && apt -y full-upgrade

# Add dev and required packages
apt install -y gcc make build-essential git tmux

# Install wiringPi
cd /tmp
wget https://github.com/WiringPi/WiringPi/releases/download/2.61-1/wiringpi-2.61-1-arm64.deb
apt install -y ./wiringpi-2.61-1-arm64.deb

# Install FPGA tools prerequisites
# Some of these may be unnecessary if not installing nextpnr, needs to be culled
sudo apt install -y  build-essential clang bison flex libreadline-dev \
                     gawk tcl-dev libffi-dev git mercurial graphviz   \
                     xdot pkg-config python python3 libftdi-dev \
                     python3-dev libboost-all-dev cmake libeigen3-dev

# IceStorm Tools
cd /tmp
git clone https://github.com/YosysHQ/icestorm.git icestorm
cd icestorm
make -j$(nproc)
sudo make install

# Arachne PNR
cd /tmp
git clone https://github.com/cseed/arachne-pnr.git arachne-pnr
cd arachne-pnr
make -j$(nproc)
sudo make install

# Yosys
cd /tmp
git clone https://github.com/YosysHQ/yosys.git yosys
cd yosys
make -j$(nproc)
sudo make install

# enable SPI on Raspberry Pi
echo '>>> Enable SPI'
if grep -q 'dtparam=spi=on' /boot/config.txt; then
  echo 'SPI parameter already set, skip this step.'
else
  echo 'dtparam=spi=on' >> /boot/config.txt
fi
if [ -f /etc/modprobe.d/raspi-blacklist.conf ]; then
  sed -i 's/^blacklist spi-bcm2708/#blacklist spi-bcm2708/' /etc/modprobe.d/raspi-blacklist.conf
else
  echo 'File raspi-blacklist.conf does not exist, skip this step.'
fi

# enable I2C
if grep -q 'dtparam=i2c1=on' /boot/config.txt; then
  echo 'I2C parameter already set, skip this step.'
else
  echo "# I2C device tree settings" >> /boot/config.txt
  echo "dtparam=i2c1=on" >> /boot/config.txt
  echo "dtparam=i2c_arm=on" >> /boot/config.txt
fi

# enable UART
if grep -q 'enable_uart=1' /boot/config.txt; then
  echo 'UART parameter already set, skip this step.'
else
  echo "# UART device tree settings" >> /boot/config.txt
  echo "enable_uart=1" >> /boot/config.txt
fi


# install LiFePO4wered+ library, UPS management software
apt install -y libsystemd-dev
cd /tmp
git clone https://github.com/xorbit/LiFePO4wered-Pi.git
cd LiFePO4wered-Pi/
make all
make user-install

# Install GPSD, GPS deamon, 
# config to read in data from serial0 
# You can use gpsmon or cgps to view GPS data.
sudo apt-get install gpsd-clients gpsd -y
sudo sed -i 's/DEVICES=""/DEVICES="\/dev\/serial0"/g' /etc/default/gpsd 
stty -F /dev/serial0 9600

echo "Finished in $((SECONDS/3600))h $(((SECONDS/60)%60))m $((SECONDS%60))s, reboot to implement changes."