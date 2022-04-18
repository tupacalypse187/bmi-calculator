FROM node:16.13.1-alpine
WORKDIR /app
COPY package-lock.json package.json .
RUN npm i --only=prod
EXPOSE 3000
CMD npm start
