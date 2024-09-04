# FROM node:0.12.2-slim

# LABEL maintainer=eric.muellenbach@yncrea.fr

# ADD app.js .

# ENTRYPOINT [ "node", "app.js" ]


# Use official Node.js runtime as a parent image
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Start the application
