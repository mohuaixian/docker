#!/usr/bin/env bash
docker pull jplock/zookeeper &&
docker run -d --name zookeeper -p 2181:2181 registry.aliyuncs.com/nichozuo/zookeeper