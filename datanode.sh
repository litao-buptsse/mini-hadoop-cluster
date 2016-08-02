#!/bin/bash

source ./config.sh

docker pull $REGISTRY/$IMAGE

docker run -d --net=host \
  --name datanode-`date +%s` \
  -v /etc/localtime:/etc/localtime \
  -v $LOCAL_LOG_DIR:$LOG_DIR \
  -v $LOCAL_DATA_DIR:$DATA_DIR \
  $REGISTRY/$IMAGE $HADOOP_HOME/start_datanode.sh
