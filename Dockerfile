# Mateusz Wojcik

FROM node:alpine

WORKDIR /code

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8000
