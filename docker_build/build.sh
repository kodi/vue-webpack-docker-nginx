#!/usr/bin/env bash
set -e

red='\e[21;31m%s\e[0m\n'
green='\e[21;32m%s\e[0m\n'
yellow='\e[21;33m%s\e[0m\n'
blue='\e[21;34m%s\e[0m\n'
magenta='\e[21;35m%s\e[0m\n'
cyan='\e[21;36m%s\e[0m\n'
white='\e[21;97m%s\e[0m\n'

### ------------------------------------
### CONFIG
### ------------------------------------
LOCAL_PORT=8080
DOCKER_PORT=80
DOCKER_TAG=local-dev/app-name   # change this to your_namespace/app-name
DOCKER_DEBUG=''
#DOCKER_DEBUG=--quiet           # uncomment this to supress docker build output 

printf "$yellow"  "[1/5] >> removing node_modules/ folder"
printf "$white" "===================================="
rm -rf node_modules/

printf "$yellow" "[2/5] >> install dependencies via npm install"
printf "$white" "===================================="
npm i --log-level warn


printf "$yellow" "[3/5] >> build static files, and copy them to dist/ folder"
printf "$white" "===================================="
npm run build --silent


printf "$yellow" "[4/5] >> build docker container with tag: $DOCKER_TAG"
printf "$white" "===================================="
docker build ${DOCKER_DEBUG} -t  ${DOCKER_TAG} .


printf "$green" "[5/5] >> Starting HTTP Server on port $LOCAL_PORT"
printf "$green" "done: >> Navigate to http://localhost:$LOCAL_PORT to see your app running in Docker"
printf "$white" "===================================="
docker run --rm -p${LOCAL_PORT}:${DOCKER_PORT} ${DOCKER_TAG}