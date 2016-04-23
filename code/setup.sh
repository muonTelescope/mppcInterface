#!/bin/bash
tar -zxvf ./code.tar.gz
echo "nameserver 131.225.0.254" >> </etc/resolv.conf>
useradd -G sudo sawaiz
useradd -G sudo mrich
echo "pi:eRD14@EIC" | chpasswd
echo "mrich:fermi101" | chpasswd
echo "sawaiz:fermi101" | chpasswd
mkdir /home/mrich
mkdir /home/mrich/.ssh
mkdir /home/sawaiz
mkdir /home/sawaiz/.ssh
cp /home/pi/code/authorized_keys /home/sawaiz/.ssh/authorized_keys
curl -sLS https://apt.adafruit.com/add | sudo bash
chown -R sawaiz /home/sawaiz
chgrp -R sawaiz /home/sawaiz
chown -R mrich /home/mrich
chgrp -R mrich /home/mrich
apt-get -y update
apt-get -y install nginx
apt-get -y install nodejs
apt-get -y install npm
apt-get -y install tmux
apt-get -y install zsh
mv /home/pi/code/voltageControl /etc/nginx/sites-available/voltageControl
ln -s /etc/nginx/sites-available/voltageControl /etc/nginx/sites-enabled/voltageControl
rm /etc/nginx/sites-available/default
mkdir /var/www/voltageControl/
cd /var/www/voltageControl/
npm install onoff
npm install ws
sudo service nginx reload
rm -r /home/pi/code
rm /home/pi/code.tar.gz
