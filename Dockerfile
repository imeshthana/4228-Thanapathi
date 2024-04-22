FROM node:latest

RUN npm install -g nodemon

WORKDIR /app

COPY package.json .

COPY . .

EXPOSE 3000

CMD ["npm", "start"]