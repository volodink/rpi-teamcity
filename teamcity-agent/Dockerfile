#FROM hypriot/rpi-java
FROM java:8
MAINTAINER Konstantin Volodin <1@1.com>
 
RUN wget -v https://download.jetbrains.com/teamcity/TeamCity-2017.1.3.tar.gz && \
    tar -xzvf TeamCity-2017.1.3.tar.gz && \
    rm -f TeamCity-2017.1.3.tar.gz

RUN apt-get update && \
    apt-get install -y wget tar make cmake build-essential gcc g++ python python-pip python3 python3-dev python3-pip

RUN pip2 install -U platformio 

ADD buildAgent.properties TeamCity/buildAgent/conf/

EXPOSE 8111 9090
ENTRYPOINT ["TeamCity/buildAgent/bin/agent.sh", "run"]
