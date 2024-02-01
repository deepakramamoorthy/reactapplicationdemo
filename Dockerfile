FROM node:18.16.0-alpine3.17
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
COPY package-lock.json /app
RUN npm install
COPY . /app
EXPOSE 80
CMD [ "npm", "start"]
