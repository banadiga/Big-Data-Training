#!/usr/bin/env bash

. 0.config.sh

hadoop fs -cp file:///hadoop-host/README.md $HD_URL$HD_FOLDER
