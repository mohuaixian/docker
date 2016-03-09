#!/usr/bin/env bash
echo "请输入容器名称:"
read name
echo "请输入端口号:"
read port
#echo $name ":" $port

docker run -d --name $name -p $port:8080 registry.aliyuncs.com/nichozuo/tomcat