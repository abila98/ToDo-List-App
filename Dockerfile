# Use official Node.js image as the base
FROM node:14
ARG CACHEBUST=0 
# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json .
RUN npm init -y
# Install dependencies
RUN npm install express mysql body-parser

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
