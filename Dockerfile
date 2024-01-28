# Use an existing docker image as a base 
FROM node:alpine
# Set the working directory in the container to /app 
WORKDIR '/app'
# Copy package.json file to the working directory 
COPY package.json .
# Install dependencies 
RUN npm install
# COPY rest of the project file to the working director 
COPY . .  
# Command to start the application 
CMD ["npm", "start"] 