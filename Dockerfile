FROM node:8.2.1

RUN mkdir /graphql_server
WORKDIR /graphql_server

ADD package.json /src/package.json

RUN npm install

EXPOSE 3004
CMD ["npm", "start"]
