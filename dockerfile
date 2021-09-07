FROM node:16-alpine3.12

WORKDIR /usr/src

COPY . .

RUN npm install

CMD [ "npm", "start" ]
