FROM node:18-alpine AS builder

WORKDIR /usr/app

COPY package.json package-lock.json .

RUN npm ci --omit=dev

COPY lib lib
COPY server.js .

CMD ["node", "server.js"]