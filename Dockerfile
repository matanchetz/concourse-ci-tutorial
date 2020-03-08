FROM node
WORKDIR /usr/app/node/
COPY package.json .
RUN echo registry=https://art-bobcat.autodesk.com/artifactory/api/npm/autodesk-npm-virtual/  > ~/.npmrc && \
echo @adsk:registry=https://art-bobcat.autodesk.com/artifactory/api/npm/autodesk-npm/ >> ~/.npmrc && \
npm install
COPY . .
CMD ["node", "index.js"]