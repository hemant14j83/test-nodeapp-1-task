# using node 14.17.6 version from
FROM node:14-alpine

RUN mkdir -p /usr/src/app/upg-app-1
WORKDIR /usr/src/app/upg-app-1
COPY . /usr/src/app/upg-app-1
RUN npm install && npm cache verify
RUN npm install -g sequelize-cli

EXPOSE 8080
#ENTRYPOINT ["/bin/sh"]
CMD ["node","server.js"]
