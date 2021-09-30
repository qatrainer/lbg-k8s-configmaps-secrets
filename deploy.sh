#!/bin/bash
#Network creation
docker network create trio-task-network

#create docker volume
docker volume create trio=task-volume

#build images
docker build -t trio-db db
docker build -t trio-flask-app flask-app

#run database container
docker run -d --network trio-task-network --mount type=volume,source=trio-task-volume,target=/var/lib/mysql --name mysql trio-db

#run flask app
docker run -d --network trio-task-network  --name flask-app trio-flask-app

#run nginix container
docker run -d --network trio-task-network --mount type=bind,source=$(pwd)/nginx/nginx.conf,target=/etc/nginx.conf -p 80:80 --name nginx nginx:alpine