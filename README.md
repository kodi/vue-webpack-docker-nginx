# vue-webpack-docker-alpine-nginx
### Vue.js / Webpack / Docker / NginX 


:wrench: Clone And Ready-to-use repo for development using
- Vue.js (2.5.2)
- Webpack
- Docker with Alpine Linux (3.7)
- NginX inside of Docker



## Build for production and package to Docker

Go to the project root and run this command

``` sh
./docker_build/build.sh

```

It will do a cleanup, run npm install & build, and finally start nginx server on port 8080.



> See it in action here


[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/Q9br0Db8LOI/0.jpg)](https://www.youtube.com/watch?v=Q9br0Db8LOI)





## Local, non-docker builds

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report

# run unit tests
npm run unit

# run e2e tests
npm run e2e

# run all tests
npm test
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).
