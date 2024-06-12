FROM node:21-alpine3.18 as build

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm i

COPY . .

FROM node:21-alpine3.18

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm i

COPY --from=build /usr/src/app ./dist

CMD ["node", "dist/index.js"]
