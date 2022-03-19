FROM node:lts-alpine
WORKDIR /usr/src/app
COPY package.json .
RUN npm install  --silent 
COPY . .
EXPOSE 3000
RUN chown -R node /usr/src/app
USER node
CMD ["node", "index.js"]
