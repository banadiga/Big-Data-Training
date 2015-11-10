#!/usr/bin/env bash

HB_VERSION=0.94.27

## Creating a HBase user
sudo addgroup hbase
sudo adduser --ingroup hbase hbuser --disabled-password
sudo adduser hbuser sudo

## Install HBase
cd /usr/local/ 

## Download latest Apache HBase source from Apache mirrors
sudo wget http://mirrors.sonic.net/apache/hbase/hbase-${HB_VERSION}/hbase-${HB_VERSION}.tar.gz

## Extract HBase source
sudo tar -xzvf hbase-${HB_VERSION}.tar.gz > /dev/null

## Move hbase-version to hbase folder
sudo rm -rf /usr/local/hbase
sudo mv hbase-${HB_VERSION} /usr/local/hbase

## Assign ownership of this folder to HBase user
sudo chown hbuser:hbase -R /usr/local/hbase
