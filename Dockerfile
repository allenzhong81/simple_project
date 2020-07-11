FROM mhart/alpine-node

# Create app directory
RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/server

# Install server dependencies
WORKDIR /usr/src/app/server
COPY ./server/package.json /usr/src/app/server
RUN npm install

# Install server dependencies
WORKDIR /usr/src/app/server
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 80
CMD [ "npm", "start" ]