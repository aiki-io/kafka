#!/bin/bash

bin/kafka-server-start.sh config/server.properties --override zookeeper.connect=${ZOOKEEPER_URL}

