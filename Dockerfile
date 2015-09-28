FROM node

MAINTAINER Ingo Reinhart <ingo.reinhart@gmail.com>

USER root

RUN apt-get update && apt-get -y upgrade && apt-get -y --PURGE autoremove && apt-get -y install netcat

RUN npm install -g nightwatch && rm -rf \
 /tmp/* \
 /root/.npm

RUN mkdir /app
WORKDIR /app
