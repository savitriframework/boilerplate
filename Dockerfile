FROM node:16

WORKDIR /opt/application

COPY packages packages
COPY package.json package.json
COPY etc/nginx /etc/nginx/
COPY etc/crontabs /etc/crontabs-postup/

RUN npm install
