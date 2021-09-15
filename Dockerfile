FROM quay.io/upslopeio/node-alpine

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
