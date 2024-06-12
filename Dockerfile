FROM node:latest

WORKDIR /app

COPY package.json yarn.lock .env ./

RUN npm i

COPY index.js ./

CMD ["node", "index.js"]
