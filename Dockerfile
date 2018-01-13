FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/app

# Set it as working driectory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json /usr/src/app/

RUN npm install

# Bundle app source
COPY . /usr/src/app

# Expose 3000 to docker daemon. The container will listen
# on this port
EXPOSE 3000
CMD [ "npm", "start" ]