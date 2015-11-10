#!/usr/bin/env bash

HD_VERSION=2.6.0

## Creating a Hadoop user for accessing HDFS 
sudo addgroup hadoop 
sudo adduser --ingroup hadoop hduser --disabled-password
sudo adduser hduser sudo

## Install hadoop
cd /usr/local/ 

## Download latest Apache Hadoop source from Apache mirrors
sudo wget http://mirrors.sonic.net/apache/hadoop/common/hadoop-${HD_VERSION}/hadoop-${HD_VERSION}.tar.gz

## Extract Hadoop source
sudo tar -xzvf hadoop-${HD_VERSION}.tar.gz

## Move hadoop-version to hadoop folder
sudo rm -rf /usr/local/hadoop
sudo mv hadoop-${HD_VERSION} /usr/local/hadoop

## Assign ownership of this folder to Hadoop user
sudo chown hduser:hadoop -R /usr/local/hadoop 

## Create Hadoop temp directories for Namenode and Datanode
sudo mkdir -p /usr/local/hadoop_tmp/hdfs/namenode
sudo mkdir -p /usr/local/hadoop_tmp/hdfs/datanode

## Again assign ownership of this Hadoop temp folder to Hadoop user
sudo chown hduser:hadoop -R /usr/local/hadoop_tmp/
