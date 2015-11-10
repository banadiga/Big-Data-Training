#!/usr/bin/env bash

## Define env variable
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

## Start all HBase daemons
cd /usr/local/hbase/bin/

./start-hbase.sh
