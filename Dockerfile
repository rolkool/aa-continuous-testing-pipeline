FROM node:10

WORKDIR /usr/src/app
COPY package.json .
RUN npm install

EXPOSE 8080

#Just caching the commands
#Does not have to be the last command in the Dockerfile
CMD ["npm", "start"]

COPY . .

