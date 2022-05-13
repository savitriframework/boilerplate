FROM node:16

WORKDIR /opt/application

COPY packages packages
COPY package.json package.json
COPY etc/nginx /etc/nginx/
COPY frontend /var/www/html/frontend/

RUN npm install
CMD (cd node_modules/savitri/packages/frontend && npm install) && \
  (cd node_modules/savitri && npm install)
