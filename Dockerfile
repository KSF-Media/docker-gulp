FROM node

RUN npm install -g gulp

ADD run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /src

ENTRYPOINT ["/run.sh"]

CMD ["default"]

