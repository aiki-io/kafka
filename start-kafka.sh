#!/bin/bash

bin/kafka-run-class.sh kafka.Kafka config/server.properties --override zookeeper.connect=${ZOOKEEPER_URL}

