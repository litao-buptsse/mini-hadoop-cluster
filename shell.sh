#!/bin/bash

source ./config.sh

docker pull $REGISTRY/$IMAGE

docker run --rm -it --net=host \
  --name shell-`date +%s` \
  -v /etc/localtime:/etc/localtime \
  -v $LOCAL_LOG_DIR:$LOG_DIR \
  -v $LOCAL_DATA_DIR:$DATA_DIR \
  $REGISTRY/$IMAGE /bin/bash
  
