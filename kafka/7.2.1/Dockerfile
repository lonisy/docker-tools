# 基于 Confluent Kafka 官方基础镜像
FROM confluentinc/cp-kafka:7.2.1

# 设置环境变量 （可选，根据需要自定义）
ENV KAFKA_AUTO_CREATE_TOPICS_ENABLE=true
ENV KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1
ENV KAFKA_NUM_PARTITIONS=1

# 在这里可以添加更多配置，拷贝文件或者执行脚本
# COPY your-configuration-file /etc/kafka/
# RUN some-custom-command

# 暴露 Kafka 的默认端口 9092和KRaft管理端口9093（如果需要其他端口可自行修改）
EXPOSE 9092 9093

# 在这里可以添加一个命令来启动 Kafka 服务
# 如果需要添加自定义启动命令，可以使用 ENTRYPOINT 或 CMD
# 默认情况，基础镜像已经定义了 Kafka 启动命令