FROM node:20.20.0-alpine3.23

WORKDIR /app
COPY package.json package-lock.json ./ 
RUN npm install
RUN wget https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
COPY . . 

EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]