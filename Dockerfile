FROM node:latest

WORKDIR /app

COPY package.json package.lock ./

RUN npm i

COPY index.js ./

CMD ["node", "index.js"]
