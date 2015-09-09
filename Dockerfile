FROM node

WORKDIR /src

#RUN npm install gulp
RUN npm install -g gulp
#RUN npm install gulp-less
RUN npm install -g gulp-less
RUN npm install -g gulp-util

CMD gulp

