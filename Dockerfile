FROM node:10.24.1-alpine

WORKDIR /app

COPY package.json /app/
COPY yarn.lock /app/

RUN yarn install --production --frozen-lockfile && yarn cache clean

COPY . /app

ENV NODE_ENV production
ENTRYPOINT ["yarn", "start"]
