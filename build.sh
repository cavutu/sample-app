#!/usr/bin/env bash

APP_CONTAINER_NAME=cavutu/sample-app
SCRIPT_DIR=`dirname "$0"`

echo -e "Stopping current ${APP_CONTAINER_NAME} docker containers..."
docker stop $(docker ps -a | grep ${APP_CONTAINER_NAME} | awk '{print $1}')
docker rm $(docker ps -a | grep ${APP_CONTAINER_NAME} | awk '{print $1}')

echo -e "\nBuilding  sample-app container image...\n"
docker build . -t  ${APP_CONTAINER_NAME}
