
## Using the Command Line

```shell

docker run -it --rm lonisy/kafka-shell-client:kafka_2.11-0.10.1.1 \ 
"kafka shell command"    

docker run -it --rm lonisy/kafka-shell-client:kafka_2.11-0.10.1.1 \
kafka-consumer-groups.sh \ 
--bootstrap-server bootstrap-server:9092 \ 
--group group_name \ 
--describe

```

## Using the Shell Script

```shell
#!/usr/bin/env bash

kafka-cli() {
    docker run -it --rm lonisy/kafka-shell-client:kafka_2.11-0.10.1.1 $*
}

kafka-cli kafka-consumer-groups.sh --bootstrap-server bootstrap-server:9092 --group group_name --describe

```