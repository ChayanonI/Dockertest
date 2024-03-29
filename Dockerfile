FROM node:20

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends nano vim git

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "run", "dev"]
