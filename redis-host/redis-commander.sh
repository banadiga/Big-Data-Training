#!/usr/bin/env bash

##
sudo apt-get install nodejs -qq -y
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install npm -qq -y
sudo npm install -g redis-commander

cd /tmp
sudo curl -G https://raw.githubusercontent.com/joeferner/redis-commander/02d4c48809a0670ebd19ebda65c9dd125d562523/dist/debian/init.d/redis-commander -o redis-commander-service
sudo cp redis-commander-service /etc/init.d/redis-commander

#and we apply steps that written in github commit:
sudo useradd --system -m -s /bin/false nodejs
sudo useradd --system -d /home/nodejs -G nodejs -s /bin/false redis-commander
sudo chmod g+w /home/nodejs/
sudo cp dist/debian/init.d/redis-commander /etc/init.d/
sudo chmod +x /etc/init.d/redis-commander
sudo update-rc.d redis-commander defaults

sudo service redis-commander start


