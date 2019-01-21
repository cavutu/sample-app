#!/usr/bin/env bash

APP_CONTAINER_NAME=cavutu/sample-app
SCRIPT_DIR=`dirname "$0"`

echo -e "Stopping current ${APP_CONTAINER_NAME} docker containers..."
docker stop $(docker ps -a | grep ${APP_CONTAINER_NAME} | awk '{print $1}')
docker rm $(docker ps -a | grep ${APP_CONTAINER_NAME} | awk '{print $1}')

echo -e "\nStarting sample-app...\n"
docker run -it -p 8090:8090 ${APP_CONTAINER_NAME}
