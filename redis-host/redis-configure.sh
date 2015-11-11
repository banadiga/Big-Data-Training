#!/usr/bin/env bash

## Define env variable
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

## Update Hadoop configuration files
cat <<EOT >> $HOME/.bashrc

export JAVA_HOME=/usr/lib/jvm/java-8-oracle

EOT
