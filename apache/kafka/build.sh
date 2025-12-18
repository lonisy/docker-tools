#!/bin/bash
# Shebang 指定脚本解释器
# Created by itffind@gmail.com at 星期四
#docker run -d \
#  --name broker \
#  -e KAFKA_NODE_ID=1 \
#  -e KAFKA_PROCESS_ROLES=broker,controller \
#  -e KAFKA_LISTENERS=PLAINTEXT://:9092,CONTROLLER://:9093 \
#  -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:9092 \
#  -e KAFKA_CONTROLLER_LISTENER_NAMES=CONTROLLER \
#  -e KAFKA_LISTENER_SECURITY_PROTOCOL_MAP=CONTROLLER:PLAINTEXT,PLAINTEXT:PLAINTEXT \
#  -e KAFKA_CONTROLLER_QUORUM_VOTERS=1@localhost:9093 \
#  -e KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1 \
#  -e KAFKA_TRANSACTION_STATE_LOG_REPLICATION_FACTOR=1 \
#  -e KAFKA_TRANSACTION_STATE_LOG_MIN_ISR=1 \
#  -e KAFKA_GROUP_INITIAL_REBALANCE_DELAY_MS=0 \
#  -e KAFKA_NUM_PARTITIONS=3 \
#  apache/kafka:latest
#
#docker pull docker.hlmirror.com/apache/kafka:4.0.1
#docker pull docker.cloud-sea.cloud/apache/kafka:4.0.1

# 持久化
#  -v /path/to/kafka-logs:/var/lib/kafka/data \
#  -v /path/to/zookeeper-data:/var/lib/zookeeper/data \

docker run -d \
  --name kafka_broker \
  -p 9092:9092 \
  -p 9093:9093 \
  -e KAFKA_NODE_ID=1 \
  -e KAFKA_PROCESS_ROLES=broker,controller \
  -e KAFKA_LISTENERS=PLAINTEXT://:9092,CONTROLLER://:9093 \
  -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:9092 \
  -e KAFKA_CONTROLLER_LISTENER_NAMES=CONTROLLER \
  -e KAFKA_LISTENER_SECURITY_PROTOCOL_MAP=CONTROLLER:PLAINTEXT,PLAINTEXT:PLAINTEXT \
  -e KAFKA_CONTROLLER_QUORUM_VOTERS=1@localhost:9093 \
  -e KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1 \
  -e KAFKA_TRANSACTION_STATE_LOG_REPLICATION_FACTOR=1 \
  -e KAFKA_TRANSACTION_STATE_LOG_MIN_ISR=1 \
  -e KAFKA_GROUP_INITIAL_REBALANCE_DELAY_MS=0 \
  -e KAFKA_NUM_PARTITIONS=3 \
  apache/kafka:4.0.1

docker exec -it kafka_broker \
/opt/kafka/bin/kafka-topics.sh --create --topic my-new-topic --bootstrap-server localhost:9092 --partitions 3 --replication-factor 1

docker exec -it kafka_broker \
/opt/kafka/bin/kafka-topics.sh --create --topic test_topic --bootstrap-server localhost:9092 --partitions 3 --replication-factor 1

docker exec -it kafka_broker \
/opt/kafka/bin/kafka-topics.sh --create --topic test_topic2 --bootstrap-server localhost:9092 --partitions 3 --replication-factor 1

#docker exec -it kafka_broker /bin/bash
#
#docker pull apache/kafka:4.0.1
