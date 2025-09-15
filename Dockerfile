# Base image Node.js
FROM registry-docker.weg.net/node:22-alpine

# Cria diretório da aplicação
WORKDIR /app

# Copia package.json e package-lock.json
COPY package*.json ./

RUN apk add --no-cache openssl

RUN npm config set registry https://nexus3.weg.net/repository/npm-group/; \
    npm config set //nexus3.weg.net/repository/npm-group/:_auth $(echo -n "gitlabnexus:bxm0CD9Ho6XZzeYa-f2R" | openssl base64);

# Instala dependências
RUN npm ci

# Copia código fonte
COPY server.js .

# Expõe porta
EXPOSE 3001

# Comando padrão
CMD ["npm", "start:prod"]
