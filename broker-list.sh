#!/bin/bash

# collect container ID(s)
CONTAINERS=$(docker ps | grep 9092 | awk '{print $1}')
#collect boker ports and hosts
BROKERS=$(for CONTAINER in $CONTAINERS; do docker port $CONTAINER 9092 | sed -e "s/0.0.0.0:/$HOST_IP:/g"; done)
#prints list of broker host:port, replace space with comma
echo $BROKERS | sed -e 's/ /,/g'
