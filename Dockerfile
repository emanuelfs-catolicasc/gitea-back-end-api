FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

RUN npm run test

COPY server.js .

EXPOSE 3001

CMD ["npm", "run", "start:prod"]
