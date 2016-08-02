#!/bin/bash

id=default
dnAddress=0.0.0.0:50010
dnIpcAddress=0.0.0.0:50020
dnHttpAddress=0.0.0.0:50075

if [ $# -eq 1 ]; then
  id=$1
fi

cd /search/hadoop
sed -i "s/\$id/$id/g" etc/hadoop/core-site.xml
sed -i "s/\$dnAddress/$dnAddress/g" etc/hadoop/hdfs-site.xml
sed -i "s/\$dnIpcAddress/$dnIpcAddress/g" etc/hadoop/hdfs-site.xml
sed -i "s/\$dnHttpAddress/$dnHttpAddress/g" etc/hadoop/hdfs-site.xml

bin/hdfs namenode -format
