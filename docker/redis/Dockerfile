FROM ubuntu:12.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get install -y -q python-software-properties software-properties-common

RUN add-apt-repository ppa:chris-lea/redis-server
RUN apt-get update

RUN apt-get install -y -q redis-server

EXPOSE      6379
ENTRYPOINT  ["/usr/bin/redis-server"]