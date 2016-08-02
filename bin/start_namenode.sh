#!/bin/bash

cd /search/hadoop
sbin/hadoop-daemon.sh --config etc/hadoop --script hdfs start namenode
while true; do sleep 60; done
