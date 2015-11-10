#!/usr/bin/env bash

. 0.config.sh

hbase shell <<EOF
  put '${HB_TABLE}', 'firstrow', 'columnfamily:message', 'hello world'
EOF
