FROM node:20.20.0-alpine3.23

WORKDIR /app
COPY package.json package-lock.json ./ 
RUN npm install
COPY . . 

EXPOSE 4000

ENTRYPOINT ["npm", "run", "start"]