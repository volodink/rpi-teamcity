#!/bin/bash

docker service create \
       --name=portainer \
       --publish=9000:9000/tcp \
       --constraint=node.role==manager \
       --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
       --mount=type=bind,src=$(pwd)/portainer-data,dst=/data \
       portainer/portainer:arm

