# docker-zookeeper

## Synopsis

Using this Dockerfile you can build your own container with Apache ZooKeeper.

## Build

```
docker build -t seprob/zookeeper:latest .
```

## Run

```
docker run -d -e ZOOKEEPER_PORT=2181 -p 2181:2181 seprob/zookeeper:latest
```
