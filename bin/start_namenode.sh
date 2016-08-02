#!/bin/bash

tmpDir=/tmp/hadoop-root

if [ $# -eq 1 ]; then
  tmpDir=$1
fi

cd /search/hadoop
sed -i "s/\$hadoop.tmp.dir/$tmpDir/g" etc/hadoop/core-site.xml

sbin/hadoop-daemon.sh --config etc/hadoop --script hdfs start namenode
while true; do sleep 60; done
