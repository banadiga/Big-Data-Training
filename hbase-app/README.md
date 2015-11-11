# HBase simple app

Display records from HBase

## Build

```bash
mvn clean package
```

## Run

Run in `hbase-host` as `hbuser` user:

```bash
vagrant ssh
sudo su hbuser
cd /hbase-app
```

Display records fro HBase

```bash
. run.sh
```
