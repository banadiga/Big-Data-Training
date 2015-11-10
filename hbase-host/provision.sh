#!/usr/bin/env bash

## Java 8 Installation
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update -qq -y
echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections
sudo apt-get install -y -qq oracle-java8-installer
yes "" | sudo apt-get -f install -y

# install MC
sudo apt-get install -y -qq mc

sudo apt-get update -y -qq
sudo apt-get upgrade -y -qq

# Install hbase
. /hbase-host/hbase-install.sh

# Configure hbase
su -s /bin/bash -c "/hbase-host/hbase-configure.sh" hbuser

# Configure hbase
su -s /bin/bash -c "/hbase-host/hbase-start-servers.sh" hbuser

echo "Done!"
