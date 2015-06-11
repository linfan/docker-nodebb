FROM node:0.12.4

RUN apt-get update
RUN apt-get install git redis-server imagemagick build-essential
RUN service redis-server start

RUN cd /
RUN git clone -b v0.7.x https://github.com/NodeBB/NodeBB.git nodebb
RUN cd nodebb
RUN npm install --production

WORKDIR /nodebb
CMD npm start
