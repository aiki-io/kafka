FROM openjdk:8-jre-alpine
MAINTAINER lech@aiki.io

ENV KAFKA_VERSION=2.12-0.10.2.0
RUN apk add --no-cache bash && \
	mkdir /opt && \
	wget -q http://www-us.apache.org/dist/kafka/0.10.2.0/kafka_$KAFKA_VERSION.tgz -O /tmp/kafka-$ZK_VERSION.tar.gz && \
	 tar -xzf /tmp/kafka-$ZK_VERSION.tar.gz -C /opt && \
	 rm -f /tmp/kafka-$ZK_VERSION.tar.gz && \
	 ln -s /opt/kafka_$KAFKA_VERSION /opt/kafka && \
	 addgroup kafka && \
	 adduser -S -G kafka kafka && \
	 chown -R kafka:kafka /opt/kafka
	 
	
