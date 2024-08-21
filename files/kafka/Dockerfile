FROM python:3.9.1

RUN apt-get update && apt-get install -y sudo openjdk-11-jdk default-mysql-client

COPY kafka_2.13-3.0.2.tgz /
RUN tar -xzvf kafka_2.13-3.0.2.tgz && \
    mv kafka_2.13-3.0.2 /opt/kafka && \
    rm kafka_2.13-3.0.2.tgz

# 以下の行を削除
# RUN ln -s kafka_2.12-3.0.2 kafka

COPY start_up.sh  /etc/rc.local/
RUN chmod 755 /etc/rc.local/start_up.sh

ENV PATH="/opt/kafka/bin:${PATH}"

WORKDIR /opt/kafka