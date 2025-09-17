FROM registry-docker.weg.net/node:22-alpine

ARG REGISTRY_USERNAME
ARG REGISTRY_PASSWORD

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY server.js .

EXPOSE 3001

CMD ["npm", "run", "start:prod"] 
