# Set the base image.
FROM node:slim

# Install global npm packages
RUN npm i -g @angular/cli

# Create and define the node_modules's cache directory.
RUN mkdir /usr/src/cache
WORKDIR /usr/src/cache

# Install the application's dependencies into the node_modules's cache directory.
COPY octopod/package.json* octopod/package-lock.json* ./
RUN npm install

# Create and define the application's working directory.
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
