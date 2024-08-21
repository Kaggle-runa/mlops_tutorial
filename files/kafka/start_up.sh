#!/bin/bash

/opt/kafka/bin/zookeeper-server-start.sh -daemon /opt/kafka/config/zookeeper.properties

sleep 10

/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties