FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY myapp/package*.json ./

# Install dependencies
RUN npm install

# Install nodemon globally as a development dependency
RUN npm install -g nodemon

# Copy the rest of the application code
COPY myapp/ ./myapp

# Expose port 2000 (default app.js port)
EXPOSE 2000

# Start the Express.js application using nodemon
CMD ["nodemon", "myapp/app.js"]