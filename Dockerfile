FROM registry-docker.weg.net/node:22-alpine

ARG REGISTRY_USERNAME
ARG REGISTRY_PASSWORD

WORKDIR /app

COPY package*.json ./

RUN apk add --no-cache openssl

RUN npm config set registry https://nexus3.weg.net/repository/npm-group/; \
    npm config set //nexus3.weg.net/repository/npm-group/:_auth $(echo -n "$REGISTRY_USERNAME:$REGISTRY_PASSWORD" | openssl base64);
    # npm config set //nexus3.weg.net/repository/npm-group/:_auth $(echo -n "$REGISTRY_USERNAME:$REGISTRY_PASSWORD" | openssl base64);

RUN npm ci

COPY server.js .

EXPOSE 3001

CMD ["npm", "run", "start:prod"] 
