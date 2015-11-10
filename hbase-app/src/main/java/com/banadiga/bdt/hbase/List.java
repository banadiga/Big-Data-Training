package com.banadiga.bdt.hbase;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.HBaseAdmin;

public class List {
  public static void main(String[] args) throws Exception {
    Configuration conf = HBaseConfiguration.create();
    HBaseAdmin admin = new HBaseAdmin(conf);
    TableName[] tableDescriptor = admin.listTableNames();
    System.out.println(tableDescriptor);
  }
}
