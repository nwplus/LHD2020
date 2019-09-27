FROM node:latest
# create a directory to hold the application code inside the image, aka the working directory of the application:
RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app
COPY package*.json yarn.lock ./
RUN yarn install
RUN npm rebuild node-sass
EXPOSE 3000
CMD [ "yarn", "run", "dev" ]
