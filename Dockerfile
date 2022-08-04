# syntax=docker/dockerfile:1

# See package.json>engines>node
FROM node:16.16

# To leverage caching of the packages
COPY package*.json ./

RUN npm ci

COPY . ./

CMD ["npm", "start"]
