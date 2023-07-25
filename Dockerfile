# Set the working directory
FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

WORKDIR /home/app

# Copy the app folder to the container's working directory
COPY ./app .

# Install dependencies using npm
RUN npm install

# Start the server
CMD node server.js
