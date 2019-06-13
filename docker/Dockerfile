FROM ubuntu:14.04

RUN apt-get update \
 && apt-get install curl -y\
 && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash \
 && export NVM_DIR="/root/.nvm" \
 && \. "$NVM_DIR/nvm.sh" \
 && nvm install v10.16.0

EXPOSE 3000