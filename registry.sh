#!/bin/bash

docker service create \
       --name=registry \
       --restart-condition=any \
       --publish=5000:5000/tcp \
       --constraint=node.role==manager \
       --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
       --mount=type=bind,src=/mnt/flash01,dst=/var/lib/registry \
       codrake/rpi-registry
