#!/usr/bin/env bash

set -e

echo "clientPort=$ZOOKEEPER_PORT" > /opt/Kafka/kafka_2.12-1.0.0/config/zookeeper.properties 

echo "dataDir=/tmp/zookeeper" >> /opt/Kafka/kafka_2.12-1.0.0/config/zookeeper.properties

exec "$@"
