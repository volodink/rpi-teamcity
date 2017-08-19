FROM hypriot/rpi-java
#FROM java:8
MAINTAINER Konstantin Volodin <1@1.com>

RUN apt-get update && \
    apt-get install -y wget tar

RUN wget -v https://download.jetbrains.com/teamcity/TeamCity-2017.1.3.tar.gz && \
    tar -xzvf TeamCity-2017.1.3.tar.gz && \
    rm -f TeamCity-2017.1.3.tar.gz

ENV TEAMCITY_DATA_PATH /root/BuildServer

EXPOSE 8111 9090
ENTRYPOINT ["TeamCity/bin/teamcity-server.sh","run"]
