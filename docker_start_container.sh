#!/usr/bin/env bash
set -e
LOCAL_PORT=8080
DOCKER_PORT=80
DOCKER_TAG=local-dev/app-name   # change this to your_namespace/app-name
DOCKER_DEBUG=''
docker run --rm -p${LOCAL_PORT}:${DOCKER_PORT} ${DOCKER_TAG}
