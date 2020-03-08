FROM node
WORKDIR /usr/app/node/
COPY package.json .
RUN npm install
COPY . .
CMD ["node", "index.js"]