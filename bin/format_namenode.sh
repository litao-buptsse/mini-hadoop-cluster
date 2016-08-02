#!/bin/bash

tmpDir=/tmp/hadoop-root

if [ $# -eq 1 ]; then
  tmpDir=$1
fi

cd /search/hadoop
sed -i "s/\$hadoop.tmp.dir/$tmpDir/g" etc/hadoop/core-site.xml

bin/hdfs namenode -format
