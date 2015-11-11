#!/usr/bin/env bash

redis-cli <<EOF
  GET my-key
EOF