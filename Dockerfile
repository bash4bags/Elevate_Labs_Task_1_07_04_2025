# Uses Node.js v14 as the base image
FROM node:16 
# Sets the working directory inside the container to `/app`
WORKDIR /app
# Copies `package.json` and `package-lock.json` to `/app`
COPY package*.json ./
# Installs dependencies inside the container
RUN npm install
# Copies all remaining files (including `index.js`)
COPY . .
# Documents that the app uses port 3000
EXPOSE 3000
# Runs `node index.js` when the container starts
CMD ["node", "index.js"]