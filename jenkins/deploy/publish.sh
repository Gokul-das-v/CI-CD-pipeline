#!/bin/bash
#
#deployment script

echo "************extracting data from the file******"
export PASS=$(sed -n '3p' /tmp/.auth)
export BUILD_TAG=$(sed -n '2p' /tmp/.auth)
export IMAGE=$(sed -n '3p' /tmp/.auth)

echo "**************Logging in to Docker Hub*****"

docker login -u vgokul312 -p $PASS

echo "*************Executing Deployemnt file*****"

docker-compose up -d
