#!/bin/bash

dir=`dirname $0`
dir=`cd $dir; pwd`

HADOOP_VERSION=2.5.0-cdh5.3.2
HADOOP_DIST_DIR=/search/code/hadoop/hadoop-dist/target/hadoop-$HADOOP_VERSION
IMAGE_NAME=clouddev/mini-hadoop-cluster
IMAGE=$IMAGE_NAME:$HADOOP_VERSION
REGISTRY='registry.docker.dev.sogou-inc.com:5000'

HADOOP_HOME=/search/hadoop
LOG_DIR=$HADOOP_HOME/logs
DATA_DIR=/tmp/hadoop-root
LOCAL_LOG_DIR=$dir/logs; mkdir -p $LOCAL_LOG_DIR
LOCAL_DATA_DIR=$dir/data; mkdir -p $LOCAL_DATA_DIR
