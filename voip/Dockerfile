FROM debian:jessie
MAINTAINER Aexea Carpentry

RUN apt-get update && apt-get install -y openjdk-7-jre-headless binutils mongodb-server jsvc unzip
RUN mkdir -p /opt
WORKDIR /opt
ADD https://dl.ubnt.com/unifi-voip/1.0.5-kxe7d9/UniFiVoip.unix.zip UniFiVoip.unix.zip
RUN unzip UniFiVoip.unix.zip
WORKDIR /opt/UniFiVoip

EXPOSE 9443 9080

CMD ["java", "-jar", "lib/ace.jar", "start"]
