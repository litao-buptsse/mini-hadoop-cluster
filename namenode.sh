#!/bin/bash

if [ $# -ne 1 ]; then
  echo "usage: ./namenode.sh <id>"
  exit 1
fi

source ./config.sh

app=namenode-$1
docker stop $app
docker rm $app

docker run -d --net=host \
  --name $app \
  -v /etc/localtime:/etc/localtime \
  -v $LOCAL_LOG_DIR:$LOG_DIR \
  -v $LOCAL_DATA_DIR:$DATA_DIR \
  $REGISTRY/$IMAGE $HADOOP_HOME/start_namenode.sh $@
