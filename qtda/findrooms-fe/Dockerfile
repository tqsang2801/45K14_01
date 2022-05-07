FROM node

EXPOSE 4173

WORKDIR /app

COPY . .

RUN npm install -g npm@latest

RUN npm install

RUN npm run build

CMD [ "npm", "run", "preview", "--host" ]
