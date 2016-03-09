#!/usr/bin/env bash

mkdir -p /opt/gitlab/

sudo docker run --detach \
    --hostname 192.168.99.111:11080 \
    --publish 11443:443 --publish 11080:80 --publish 11022:22 \
    --name gitlab \
    --restart always \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest