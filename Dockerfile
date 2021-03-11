FROM debian:stretch
MAINTAINER Aexea Carpentry

RUN apt-get update && apt-get install -y openjdk-8-jre-headless binutils mongodb-server jsvc unzip
RUN mkdir -p /opt
WORKDIR /opt
ADD https://www.ubnt.com/downloads/unifi/6.0.45/UniFi.unix.zip UniFi.unix.zip
RUN unzip UniFi.unix.zip
WORKDIR /opt/UniFi

EXPOSE 8443 8080

CMD ["java", "-jar", "lib/ace.jar", "start"]
