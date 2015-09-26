FROM node

MAINTAINER Ingo Reinhart <ingo.reinhart@gmail.com>

USER root

RUN npm install -g nightwatch && rm -rf \
 /tmp/* \
 /root/.npm

RUN mkdir /app
WORKDIR /app
