FROM node:22-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

# Copies the rest of your project files (including index.js) into /app.
COPY . .

EXPOSE 8080

# This is equivalent to "npm start" if you have a start script defined in your package.json   
CMD ["node", "index"] 