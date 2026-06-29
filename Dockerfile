FROM node::20-alpine

WORKDIR /api

COPY ./services/api/package*.json ./

RUN npm ci 

COPY ./services/api/server.js .

EXPOSE 3000

CMD ["node", "server.js"]