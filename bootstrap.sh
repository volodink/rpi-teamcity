#!/bin/sh

sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get install -y oracle-java8-jdk
sudo rpi-update
sudo raspi-config


