FROM node:18-alpine

ENV CORSANYWHERE_RATELIMIT=200

WORKDIR /usr/app

COPY package.json package-lock.json .

RUN npm ci --omit=dev

COPY lib lib
COPY server.js .

CMD ["node", "server.js"]