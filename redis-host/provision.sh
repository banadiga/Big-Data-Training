#!/usr/bin/env bash

## Java 8 Installation
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update -qq -y
echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections

sudo apt-get install -y -qq build-essential
sudo apt-get install -y -qq tcl8.5

sudo apt-get install -y -qq oracle-java8-installer
yes "" | sudo apt-get -f install -y

# install MC
sudo apt-get install -y -qq mc

sudo apt-get update -y -qq
sudo apt-get upgrade -y -qq

# Install redis
. /redis-host/redis-install.sh

# Configure redis
su -s /bin/bash -c "/redis-host/redis-configure.sh" rduser


cd /usr/local/redis
sudo make install

sudo /usr/local/redis/utils/install_server.sh

## Start all redis daemons
sudo service redis_6379 start

## Install and start redis web admin
. /redis-host/redis-commander.sh
echo "Done!"
