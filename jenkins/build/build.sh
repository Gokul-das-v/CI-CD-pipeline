#!/bin/bash

#copy jar file to our working director
cp java-app/target/*.jar jenkins/build/

echo "*********Navigate to build folder******"

#navigate to build folder
 cd jenkins/build/

echo "***********Building Docker Image ******"
#Building docker image of the application
docker-compose build --no-cache

