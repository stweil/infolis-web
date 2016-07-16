# Run as:
# docker run -d --name infolis-webapp -p '3000:3000' infolis/infolis-web
FROM node:6.2

ENV NODE_ENV production
WORKDIR /app

RUN apt-get update -y && apt-get install -y raptor2-utils

COPY . /app
RUN npm install && npm run compile

EXPOSE 3000
CMD npm run start-dev
