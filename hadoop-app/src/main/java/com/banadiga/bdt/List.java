package com.banadiga.bdt;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

public class List {
  public static void main(String[] args) throws Exception {
    try {
      FileSystem fs = FileSystem.get(new Configuration());
      FileStatus[] status = fs.listStatus(new Path("hdfs://localhost:9000/"));
      for (int i = 0; i < status.length; i++) {
        System.out.println(status[i].toString());
      }
    } catch (Exception e) {
      System.out.println(e.getMessage());
    }
  }
}
