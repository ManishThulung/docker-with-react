# installing node version 20
FROM node:20-alpine

# creating a working directory
WORKDIR /app

# copying everythig that starts with package into /app folder
COPY package*.json .
COPY tsconfig*.json .

# run this command
RUN npm install

# copy source dest
COPY . .

# set port number
EXPOSE 5173

# run the command, entry point can be only one entry cmd
CMD [ "npm", "run", "dev" ]