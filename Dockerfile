FROM node:13-alpine
RUN mkdir -p /home/app
COPY . /home/app
WORKDIR /home/app/webapp/
CMD ["node", "server.js"]