# Base image Node.js
FROM node:22-alpine

# Cria diretório da aplicação
WORKDIR /app

# Copia package.json e package-lock.json
COPY package*.json ./

# Instala dependências
RUN npm ci

# Copia código fonte
COPY server .

# Expõe porta
EXPOSE 3001

# Comando padrão
CMD ["npm", "start:prod"]
