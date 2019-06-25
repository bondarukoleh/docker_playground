FROM node:10.16-alpine

RUN apk update && apk add bash
RUN mkdir mountedFolder

VOLUME /mountedFolder

RUN touch /mountedFolder/1.txt 