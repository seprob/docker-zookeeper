FROM java:alpine

MAINTAINER Bartlomiej "seprob" Korpala (seprob@poczta.fm)

RUN apk add --update bash

ENV ZOOKEEPER_PORT=2181

COPY docker-entrypoint.sh /tmp/

RUN chmod +x /tmp/docker-entrypoint.sh

RUN mkdir /opt && wget http://ftp.man.poznan.pl/apache/zookeeper/zookeeper-3.4.11/zookeeper-3.4.11.tar.gz -P /tmp && tar -xvf /tmp/zookeeper-3.4.11.tar.gz -C /opt

ENTRYPOINT ["/tmp/docker-entrypoint.sh"]

CMD ["/opt/zookeeper-3.4.11/bin/zkServer.sh", "start-foreground"]

EXPOSE 2181
