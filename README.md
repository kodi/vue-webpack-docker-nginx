# Vue.js / Webpack / Docker / NginX 

This is slightly modified vue-cli bootstrap project with addition of possibility to create Docker image with nginx that will serve static site.

<div>
    <img src="https://upload.wikimedia.org/wikipedia/commons/f/f1/Vue.png" width="64px"/>
    <br>
    Vue.js is used as main Frontend framework, project was bootstraped using `vue-cli` and using Vue.js version `2.5.2`
</div>
<div>
    <img src="https://upload.wikimedia.org/wikipedia/commons/c/c1/Webpack.png" width="64px"/>
    <br/>
    We use Webpack to bundle and build everything into static html file that is ready to be served via Docker
</div>

<div>
    <img src="https://upload.wikimedia.org/wikipedia/commons/7/79/Docker_%28container_engine%29_logo.png" height="54px"/>
</div>

<div>
    <img src="https://quiksite.com/wp-content/uploads/2016/09/NGINX-Logo.png" height="54px"/>
</div>


## Build for production and package to Docker

Go to the project root and run this command

``` sh
./docker_build/build.sh

```

It will do a cleanup, run npm install & build, and finally start nginx server inside Docker on port 8080.



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
