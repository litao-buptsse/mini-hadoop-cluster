#!/bin/bash

source ./config.sh

docker pull $REGISTRY/$IMAGE

./namenode.sh nn-0
./datanode.sh dn-0 0.0.0.0:50010 0.0.0.0:50020 0.0.0.0:50075
./datanode.sh dn-1 0.0.0.0:50011 0.0.0.0:50021 0.0.0.0:50076
./datanode.sh dn-2 0.0.0.0:50012 0.0.0.0:50022 0.0.0.0:50077
