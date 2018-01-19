# Vue.js / Webpack / Docker / NginX 
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/kodi/esta/vue-webpack-docker-nginx)
[![HitCount](http://hits.dwyl.com/kodi/vue-webpack-docker-nginx.svg)](http://hits.dwyl.com/kodi/vue-webpack-docker-nginx)



## Overview

This is slightly modified vue-cli bootstrap project with addition of possibility to create Docker image with nginx that will serve static site.

Such image can then be easily deployed with Dokku, pushed to Heroku  etc.


<div>
    <img src="https://upload.wikimedia.org/wikipedia/commons/f/f1/Vue.png" width="64px"/>
    2.5.2
    <br>
    Vue.js is used as main Frontend framework, project was bootstraped using `vue-cli` and using Vue.js version `2.5.2`
</div>
<hr/>
<div>
    <img src="https://upload.wikimedia.org/wikipedia/commons/c/c1/Webpack.png" width="64px"/> 3.6.0
    <br/>
    We use Webpack to bundle and build everything into static html file that is ready to be served via Docker
</div>
<hr/>
<div>
    <img src="https://upload.wikimedia.org/wikipedia/commons/7/79/Docker_%28container_engine%29_logo.png" height="54px"/>
    <br/>
    We use docker to package static html, js and css files and serve them via Nginx inside of docker. For best performance we use lightweight <a href="https://alpinelinux.org/">Alpine</a> linux
</div>
<hr/>

<div>
    <img src="https://quiksite.com/wp-content/uploads/2016/09/NGINX-Logo.png" height="54px"/>
    <br/>
    Nginx will serve static content from within a docker
</div>

<hr/>


### Requirements

You should have following sowftare installed on your machine:

- Node
- Npm
- Docker



## Docker build for production

Go to the project root and run this command

``` sh
./docker_build/build.sh

```

It will do a cleanup, run npm install & build, and finally start nginx server inside Docker on port 8080.



> See it in action here


[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/Q9br0Db8LOI/0.jpg)](https://www.youtube.com/watch?v=Q9br0Db8LOI)





## Local, non-docker watcher and builds

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

## Backend / API?
This is intended for maximum performance, this is why we use Nginx for serving.
If you have node.js/PHP/Java backend, do **not** run it inside this docker container.

Instead, you should follow best practices and create separate Docker with your backend service, and point this frontend code to it.

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).


[![Analytics](https://ga-beacon.appspot.com/UA-112499985-1/kodi/vue-webpack-docker-nginx?pixel)](https://github.com/kodi/vue-webpack-docker-nginx)
