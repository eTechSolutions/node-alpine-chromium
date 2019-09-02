FROM node:10.16-alpine

LABEL maintainer="Craig Mellon https://github.com/eTechSolutions/node-alpine-chromium"

RUN \
  echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
  && echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
  && echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
  && apk --no-cache  update \
  && apk --no-cache  upgrade \
  && apk add --no-cache --virtual .build-deps \    
    udev ttf-opensans chromium \
  && rm -rf /var/cache/apk/* /tmp/*

ENV CHROME_BIN /usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/