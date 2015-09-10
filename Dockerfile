FROM node

RUN npm install -g gulp gulp-util gulp-less gulp-uglify gulp-concat

ADD run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /src

ENTRYPOINT ["/run.sh"]

CMD ["default"]

