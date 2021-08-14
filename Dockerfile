FROM node:slim

# Install global npm packages
RUN npm i -g @angular/cli

# Create and define the node_modules's cache directory
RUN mkdir /usr/src/cache
WORKDIR /usr/src/cache

# Copy and install local npm packages
COPY package.json* package-lock.json* ./
RUN npm install

# Create and define the application's working directory.
RUN mkdir /usr/src/app
# Set working directory
WORKDIR /usr/src/app

# Copy the remaining source code
# COPY . .
