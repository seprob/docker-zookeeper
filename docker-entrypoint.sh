#!/usr/bin/env bash

set -e

echo "clientPort=$ZOOKEEPER_PORT" > /opt/zookeeper-3.4.11/conf/zoo.cfg

echo "dataDir=/var/lib/zookeeper" >> /opt/zookeeper-3.4.11/conf/zoo.cfg

exec "$@"
