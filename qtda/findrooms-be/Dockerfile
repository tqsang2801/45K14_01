FROM node:14

EXPOSE 3100

WORKDIR /app

COPY . .

RUN npm install -g npm@latest

RUN npm install

RUN npm run build

CMD [ "npm", "start" ]
