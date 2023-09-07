FROM node:14.15.3
WORKDIR /app
RUN chmod -R 777 /app/
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
GENERATE_SOURCEMAP=false
RUN npm install --silent
RUN npm install react-scripts@5.0.1 -g --silent
COPY . ./
RUN chmod -R 777 /app/
EXPOSE 3000
CMD ["npm", "start"]

