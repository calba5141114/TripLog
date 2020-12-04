FROM node:14

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 80

RUN npm install -g nodemon

CMD [ "nodemon", "app.js" ]