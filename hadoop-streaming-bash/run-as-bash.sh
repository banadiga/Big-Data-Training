#!/bin/bash

START=$(date -u +"%s")
cat text/* | ./mapper.sh  | sort -k1,2 | ./reducer.sh
END=$(date -u +"%s")

diff=$((END-START))
echo "$(($diff / 60)) minutes and $(($diff % 60)) seconds elapsed."