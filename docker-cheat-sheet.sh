#!/bin/bash
#Author Jesus Rosas
#Docker cheat sheet to manage docker containers

#Pull an image
docker pull <image>
docker pull nginx:latest

#Run a container - This is not detached mode
docker run <image>
docker run nginx:latest

#Run a container in detached mode
docker run -d <image>
docker run -d nginx:latest

#Run a container in detached mode with port specified
docker run -d -p 80:80 <image>
docker run -d -p 80:80 nginx:latest

#List containers running
docker ps

#List images
docker images

#Delete an image
docker rmi 

#Remove a container in execution
docker rm <containerID>
docker rm  49062098cd2c

#Docker stop
docker stop <containerID>
docker stop 49062098cd2c

#Docker delete all containers
docker rm $(docker ps -aq)

#Adding labels to a containers
#This container runs in detached mode and also rename the container in execution
docker run -d -p 80:80 <image> --name website
docker run -d -p 80:80 nginx:latest --name website

#Stoping a container with a name
docker stop <name>
docker stop website

#Starting a container with a name
docker start <stop>
docker start website

#Docker container with volumes
#it's possible to attach a host volume to access from a container
docker run --name <Name> -v <InternalPath>:<ContainerPath>:ro -d -p 80:80 <image>
docker run --name website -v /var/www/html/toys:/usr/share/nginx/html -d -p 80:80 nginx:latest

#Interactive mode docker
docker exec -it <container> bash
docker exec -it website bash