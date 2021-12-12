FROM ubuntu:20.04

USER root

ENV TZ=Europe/Belgrade
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update -y
RUN apt-get install -y parallel
RUN apt install -y tzdata
RUN apt-get -y install lsb-release
RUN apt-get -y install apt-utils
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get -y install curl
RUN apt-get -y install libnss3-dev
RUN apt install -y software-properties-common
RUN pip3 install trafilatura

COPY asger.sh /root
