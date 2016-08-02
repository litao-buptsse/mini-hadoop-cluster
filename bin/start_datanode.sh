#!/bin/bash

cd /search/hadoop
sbin/hadoop-daemon.sh --config etc/hadoop --script hdfs start datanode
while true; do sleep 60; done
