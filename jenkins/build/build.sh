#!/bin/bash

#copy jar file to our working director
cp java-app/target/*.jar jenkins/build/

echo "*********Navigate to build folder******"

#navigate to build folder
cd jenkins/build/

echo "***********Building Docker Image ******"
#Building docker image of the application

docker build -t maven_project:$BUILD_TAG .

#docker-compose build --no-cache

