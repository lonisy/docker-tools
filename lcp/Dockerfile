FROM docker.cloud-sea.cloud/ubuntu:22.04
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://mirrors.ustc.edu.cn/ubuntu/|g' /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y pdftk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV TZ=Asia/Shanghai