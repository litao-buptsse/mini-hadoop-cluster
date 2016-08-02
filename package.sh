#!/bin/bash

source ./config.sh

rm -fr .tmp
cp -r $HADOOP_DIST_DIR .tmp
rm -fr .tmp/etc/hadoop
cp -r conf .tmp/etc/hadoop
cp bin/* .tmp

docker build --no-cache=true -t $IMAGE_NAME .
docker tag -f $IMAGE_NAME $REGISTRY/$IMAGE
docker push $REGISTRY/$IMAGE
