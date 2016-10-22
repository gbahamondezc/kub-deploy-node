FROM node:6.9.1

RUN groupadd -r nodejs && useradd -m -r -g nodejs nodejs
USER nodejs

RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

COPY package.json /home/nodejs/app/package.json
RUN npm install --production
COPY . /home/nodejs/app

EXPOSE 3000

CMD ["node", "index.js"]