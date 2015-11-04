# Hadoop simple app

Display information about `hdfs://localhost:9000/`

## Build

```bash
mvn clean install
```

## Run

Run in `hadoop-host` as `hduser` user:

```bash
vagrant ssh
sudo su hduser
cd /hadoop-app
```

Display information about files and directory contains in `hdfs://localhost:9000/`

```bash
. run.sh
```
