#!/usr/bin/env bash

docker run -d --name jenkins -p 8080:8080 -p 50000:50000 registry.aliyuncs.com/nichozuo/jenkins