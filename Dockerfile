FROM java:alpine

MAINTAINER Bartlomiej "seprob" Korpala (seprob@poczta.fm)

RUN mkdir -p /opt/Kafka && wget http://ftp.man.poznan.pl/apache/kafka/1.0.0/kafka_2.12-1.0.0.tgz -P /tmp && tar -xvf /tmp/kafka_2.12-1.0.0.tgz -C /opt/Kafka

CMD ["/opt/Kafka/kafka_2.12-1.0.0/bin/zookeeper-server-start.sh", "/opt/Kafka/kafka_2.12-1.0.0/config/zookeeper.properties"]

EXPOSE 2181
