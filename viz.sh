#!/bin/bash

git clone https://github.com/dockersamples/docker-swarm-visualizer
cd docker-swarm-visualizer

docker build -f Dockerfile.arm -t visualizer-arm:latest .

docker service create \
       --name=viz \
       --publish=8080:8080/tcp \
       --constraint=node.role==manager \
       --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
       visualizer-arm:latest


cd ..
rm -rf docker-swarm-visualizer

