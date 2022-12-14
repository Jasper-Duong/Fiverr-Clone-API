# dockerfile for nginx server
# FROM nginx
# WORKDIR /usr/share/nginx/html
# COPY . .
FROM node:16
WORKDIR /usr/src/app
COPY . .
RUN npm install
EXPOSE 8080
CMD ["yarn", "start"]