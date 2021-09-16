# Use node Docker image
FROM quay.io/upslopeio/node-alpine

# Set the working dir
WORKDIR /usr/src/app

# COPY package.json and package-lock.json into root of WORKDIR
COPY package*.json ./

# Executes commands
RUN npm install
RUN npm ci

# Copies files from source to destination
# into the root of the WORKDIR
COPY . .

RUN npm run build

# Exposes port 3000
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]
