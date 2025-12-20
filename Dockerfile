FROM node:21-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

COPY . .
RUN chown -R node:node /app

ENV PORT=8080
EXPOSE 8080

USER node
CMD ["node", "app.js"]
