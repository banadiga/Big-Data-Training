# redis simple app

Display records from redis

## Build

```bash
mvn clean package
```

## Run

Run in `redis-host` as `rbuser` user:

```bash
vagrant ssh
sudo su rbuser
cd /redis-app
```

Display keys from redis with pattern `my-key:*`

```bash
. run.sh
```
