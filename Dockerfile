FROM node:latest
COPY . /src
WORKDIR /src
RUN npm install
RUN npm audit fix --force
EXPOSE 80
CMD ["node", "app.js"]
