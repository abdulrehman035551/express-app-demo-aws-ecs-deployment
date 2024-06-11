FROM node:alpine

WORKDIR /ecs

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]