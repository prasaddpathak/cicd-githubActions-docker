FROM node:13-alpine
RUN mkdir -p /home/app
COPY . /home/app
WORKDIR /home/app/cicd-tutorial/
RUN npm i
RUN npm test
RUN vite build
CMD ["vite", "preview"]