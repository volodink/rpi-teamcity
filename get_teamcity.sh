#!/bin/bash

wget -v https://download.jetbrains.com/teamcity/TeamCity-2017.1.3.tar.gz
tar -xzvf TeamCity-2017.1.3.tar.gz
rm -f TeamCity-2017.1.3.tar.gz

cp -r TeamCity teamcity-server
cp -r TeamCity teamcity-agent

rm -rf TeamCity

