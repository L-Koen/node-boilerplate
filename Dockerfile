FROM node:lts-alpine

WORKDIR /usr/src/app

# COPY ./app/package*.json ./

# RUN npm install

COPY ./app/* .