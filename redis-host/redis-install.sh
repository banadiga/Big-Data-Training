#!/usr/bin/env bash

## Creating a redis user for accessing redis
sudo addgroup redis
sudo adduser --ingroup redis rduser --disabled-password
sudo adduser rduser sudo

## Install redis
cd /usr/local/

## Download latest Apache redis source from Apache mirrors
sudo wget http://download.redis.io/releases/redis-stable.tar.gz

## Extract redis source
sudo tar -xzvf redis-stable.tar.gz

## Move redis-version to redis folder
sudo rm -rf /usr/local/redis
sudo mv redis-stable /usr/local/redis

## Assign ownership of this folder to redis user
sudo chown rduser:redis -R /usr/local/redis


cd /usr/local/redis/utils/

sudo -u rduser sh -c 'make install'
sudo /usr/local/redis/utils/install_server.sh
