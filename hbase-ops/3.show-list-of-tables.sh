#!/usr/bin/env bash

. 0.config.sh

hbase shell <<EOF
  list
EOF
