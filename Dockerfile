FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
ENV MONGODB_USERNAME howie1000us_db_user
ENV MONGODB_PASSWORD GbnTMuDL6XzAVdAy

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]