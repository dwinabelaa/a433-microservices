#! /bin/bash

docker build -t item-app:v1 .
docker images
docker tag item-app:v1 dwinabela/item-app:v1
docker login
docker push dwinabela/item-app:v1