#!/usr/bin/env bash

redis-cli <<EOF
  SET my-key 'hello world'
EOF
