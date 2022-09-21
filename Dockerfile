FROM node:16-alpine
RUN mkdir -p /home/app
COPY . /home/app
WORKDIR /home/app/cicd-tutorial

# COPY package.json package.json
# COPY package-lock.json package-lock.json
# RUN npm install
# WORKDIR /app
# COPY . .

RUN npm i
RUN npm test
RUN npm run build
RUN pwd
# RUN npm preview
CMD npm run preview