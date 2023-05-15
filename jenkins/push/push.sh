#!/bin/bash
#
echo "****************************"
echo "***********Pushing Image****"
echo "****************************"

Image=vgokul312

echo "***Logging in to Docker Hub****"

docker login -u vgokul312 -p $PASS

echo "***********Tagging Image**********"
docker tag maven_project:$BUILD_TAG vgokul312/maven_project:$BUILD_TAG

echo "***Pusing Image to Docker Hub****"

docker push $Image/maven_project:$BUILD_TAG
