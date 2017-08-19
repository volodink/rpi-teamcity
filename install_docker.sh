#!/bin/bash

sudo apt-get update
sudo apt-get install -y libyaml-dev mc htop build-essential curl wget tar tree python-pip python3 python python3-pip

curl -sSL https://get.docker.com | sh
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker pi

sudo apt-get purge python-pip
sudo easy_install3 -U pip
sudo easy_install -U pip
pip3 install docker-compose

