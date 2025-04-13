# Contruindo 
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Executando
FROM node:18-slim
WORKDIR /app

# Copiando somente o que precisa para buildar
COPY --from=build /app /app

# Definindo as variaveis que vamos usar
ENV PORT=5000
ENV URL_BANCO_DE_DADOS=mongodb://mongo:27017/tarefas

# Usando a variável definida
EXPOSE 5000
CMD ["node", "main.js"]