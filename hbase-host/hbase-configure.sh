#!/usr/bin/env bash

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export HBASE_HOME=/usr/local/hbase

## Update HBase configuration files
cat <<EOT >> $HOME/.bashrc

# -- HBASE ENVIRONMENT VARIABLES START -- #
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export HBASE_HOME=/usr/local/hbase
export PATH="/usr/lib/jvm/java-8-oracle/bin:/usr/local/hbase/bin:/usr/local/bin:/usr/local/sbin:$PATH"
# -- HBASE ENVIRONMENT VARIABLES END -- #
EOT

cd $HBASE_HOME
mkdir data
chmod -R 777 data

cat <<EOT > $HBASE_HOME/conf/hbase-site.xml
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<configuration>
  <property>
    <name>hbase.rootdir</name>
    <value>file:/usr/local/hbase/data/hbase</value>
  </property>
  <property>
    <name>hbase.zookeeper.property.dataDir</name>
    <value>file:/usr/local/hbase/data/zookeeper</value>
  </property>
</configuration>
EOT
