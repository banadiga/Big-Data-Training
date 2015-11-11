#!/usr/bin/env bash

redis-cli <<EOF
  KEYS "*"
EOF