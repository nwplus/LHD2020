# LHD2020

> The UBC LHD website

## Build Setup

Make sure to grab the env variables from notion and add them to a `.env` file in the root of this repository.

``` bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn run dev

# build for production and launch server
$ yarn run build
$ yarn start

# generate static project
$ yarn run generate
```
## Docker

``` bash
# run docker container
$ cd <directory of lhd files>
$ docker-compose up
this will grab the kozr/lhd2020_nuxt:latest image and start the container

# to build your own image
$ docker build -t <image name>
in .docker-compose.yml change image: <image name> to your image's name
$ docker-compose up

```
For detailed explanation on how things work, checkout [Nuxt.js docs](https://nuxtjs.org).
