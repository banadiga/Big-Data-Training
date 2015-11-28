#!/bin/bash

echo "Cleanind hdsf"
hadoop fs -rm -r hdfs://localhost:9000/text/
hadoop fs -rm -r hdfs://localhost:9000/text_out/

echo "Creating infrastructure on hdsf"
hadoop fs -mkdir hdfs://localhost:9000/text/

echo "Loading data on hdsf"
hadoop fs -cp file://`pwd`/text/* hdfs://localhost:9000/text

echo "Run MR job"
START=$(date -u +"%s")
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
  -D mapred.reduce.tasks=1 \
  -D mapred.map.tasks=2 \
  -input /text \
  -output /text_out \
  -mapper `pwd`/mapper.sh \
  -reducer `pwd`/reducer.sh
END=$(date -u +"%s")

diff=$((END-START))
echo "$(($diff / 60)) minutes and $(($diff % 60)) seconds elapsed."

echo "Result:"
hadoop fs -ls hdfs://localhost:9000/text_out/
#hadoop fs -cat hdfs://localhost:9000/text_out/part-00000
