FROM node:16-alpine
RUN mkdir -p /home/app
COPY . /home/app
WORKDIR /home/app/cicd-tutorial/
RUN npm i
RUN npm test
RUN npm run build
CMD ["npm", "preview"]