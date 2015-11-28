# Hadoop simple MapReduce app

Return count of words. in all files located at `./text`

Run in `hadoop-host` as `hduser` user:

```bash
vagrant ssh
sudo su hduser
cd /hadoop-streaming-bash
```

### Run thru Hadoop

```bash
. run-as-hadoop.sh
```
### Run thru Bash

```bash
. run-as-bash.sh
```


## Ren result
Tested on 4.6Mb of text:

* **hadoop:** 13 minutes and 35 seconds elapsed.
* **bash:** 34 minutes and 22 seconds elapsed.