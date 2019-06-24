FROM node:10.15.0-alpine

WORKDIR /usr/src/app

COPY . /usr/src/app/

RUN yarn install

RUN yarn build

EXPOSE 8080

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=8080

CMD ["yarn", "start"]