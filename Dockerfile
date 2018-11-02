FROM node:latest

ARG DEBIAN_FRONTEND=noninteractive

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN apt-get update && apt-get -y install ruby-full

RUN npm install -g gulp
RUN npm install --unsafe-perm -g parcel-bundler

ADD run.sh /run.sh
RUN chmod +x /run.sh

RUN mkdir /www

WORKDIR /www

ENTRYPOINT ["/run.sh"]

CMD ["default"]
