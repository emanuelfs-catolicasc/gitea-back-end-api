FROM node:22-alpine

WORKDIR /app

COPY . .

RUN npm ci

RUN npm run test

EXPOSE 3001

CMD ["npm", "run", "start:prod"]
