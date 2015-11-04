# Hadoop simple app

Display information about `hdfs://localhost:9000/`

## Build

```bash
mvn clean install
```

## Run

Run in `hadoop-host` as `hduser` user.

```bash
vagrant ssh
sudo su hduser
```

run `run.sh`

```bash
cd /hadoop-app
. run.sh
```
