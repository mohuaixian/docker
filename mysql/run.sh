#!/usr/bin/env bash
#sudo mkdir -p /opt/mysql
docker run -d --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 registry.aliyuncs.com/nichozuo/mysql