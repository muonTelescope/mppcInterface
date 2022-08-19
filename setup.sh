#!/bin/bash
# 2019-03-11 Sawaiz, XHE
# 2022-08-19 Sawaiz: added FPGA, GPS, UPS tools, and automated I2C, SPI, and UART
# Setup, install requirements

# Exit if any errors occour
set -e

# Check if running as root
if [[ $(id -u) -ne 0 ]]; then
  echo "Please run as root"
  exit
fi

read -e -p "Change hostname to: " host
read -e -s -p "Change Root (pi) Password to: " rootPasswd
echo ""
read -e -p "Add User, Username: " userName
read -e -s -p "$userName Password: " userPasswd
echo ""

#Change root (pi) password
echo "pi:$rootPasswd" | chpasswd

#Assign existing hostname to $hostn
hostn=$(cat /etc/hostname)

#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$host/g" /etc/hosts
sudo sed -i "s/$hostn/$host/g" /etc/hostname

#Create the user
useradd -m -G sudo $userName
echo "$userName:$userPasswd" | chpasswd

#Update/upgrade
apt update && apt -y full-upgrade

# Add dev and required packages
apt install -y gcc make build-essential git

# Install wiringPi
apt install -y wiringpi

# Install FPGA tools prerequisites
sudo apt-get install build-essential clang bison flex libreadline-dev \
                     gawk tcl-dev libffi-dev git mercurial graphviz   \
                     xdot pkg-config python python3 libftdi-dev \
                     qt5-default python3-dev libboost-all-dev cmake libeigen3-dev

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

# nextpnr, unable to build on Raspberry Pi
#cd /tmp
#git clone https://github.com/YosysHQ/nextpnr.git
#cd nextpnr
#cmake -DARCH=ice40 -DBUILD_GUI=OFF -DCMAKE_INSTALL_PREFIX=/usr/local .
#make -j$(nproc)
#sudo make install

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
apt get install -y libsystemd-dev
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

echo "Finished, reboot to implement changes."