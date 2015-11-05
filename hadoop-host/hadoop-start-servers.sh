#!/usr/bin/env bash

## Start all Hadoop daemons
cd /usr/local/hadoop/sbin/

./start-dfs.sh
./start-yarn.sh
