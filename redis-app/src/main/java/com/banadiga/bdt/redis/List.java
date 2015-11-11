package com.banadiga.bdt.redis;

import java.util.Set;

import redis.clients.jedis.Jedis;

public class List {
  public static void main(String[] args) throws Exception {

    Jedis jedis = new Jedis("localhost");
    System.out.println("Connection to server sucessfully");

    Set<String> keys = jedis.keys("my-key:*");

    System.out.println("keys 'my-key:*'");
    keys.stream().forEach(System.out::println);
  }
}
