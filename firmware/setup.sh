#!/bin/bash
# 2019-03-11 Sawaiz, XHE
# Setup, install requirements

#!/bin/bash
set -e

#Check if running as root
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
apt-get update && apt-get -y upgrade

# Add dev pand required packages
apt-get install -y gcc make build-essential git

# Install wiringPi
# Maybe change to isntall wiht package manager
cd /tmp
git clone git://git.drogon.net/wiringPi
cd wiringPi
./build

# Install FPGA tools

# IceStorm Tools

# Arachne PNR

# Yosis

# enable SPI on Raspberry Pi
echo '>>> Enable SPI'
if grep -q 'dtparam=spi=on' /boot/config.txt; then
  echo 'Seems SPI parameter already set, skip this step.'
else
  echo 'dtparam=spi=on' >> /boot/config.txt
fi
if [ -f /etc/modprobe.d/raspi-blacklist.conf ]; then
  sed -i 's/^blacklist spi-bcm2708/#blacklist spi-bcm2708/' /etc/modprobe.d/raspi-blacklist.conf
else
  echo 'File raspi-blacklist.conf does not exist, skip this step.'
