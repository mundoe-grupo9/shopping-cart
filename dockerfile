FROM node

WORKDIR /app/shopping-cart

# Copia el package.json al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install -g pm2 

# Copia el resto de los archivos
COPY . .

EXPOSE 3002

CMD ["pm2-runtime", "start", "server.js", "--name", "backend-shopping-cart"]

