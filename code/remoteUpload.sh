#!/bin/bash
tar -zxvf ./code.tar.gz
rm -r /var/www/voltageControl/assets
cp code/server.js /var/www/voltageControl/server.js
cp -r code/assets /var/www/voltageControl/assets
cp code/index.html /var/www/voltageControl/index.html
rm -r code
rm code.tar.gz

chmod -R 755 /var/www/voltageControl/*

service nginx restart
node /var/www/voltageControl/server.js
