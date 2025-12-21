FROM node:21-alpine

WORKDIR /app

RUN apk update && apk upgrade --no-cache

COPY package*.json ./
RUN npm ci --omit=dev

COPY . .
RUN chown -R node:node /app

USER node
EXPOSE 8080
CMD ["node","server.js"]

