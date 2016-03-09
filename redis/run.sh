#!/usr/bin/env bash
sudo mkdir -p /opt/redis
docker run --name redis -v /opt/redis/:/data -d -p 6379:6379 registry.aliyuncs.com/nichozuo/redis