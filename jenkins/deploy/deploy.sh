#!/bin/bash
#
 echo maven_praject >/tmp/.auth
 echo $BUILD_TAG >> /tmp/.auth
 echo $PASS >> /tmp/.auth

 echo "*****Transferring configuration File *******"
 sudo scp -i /opt/prod /tmp/.auth ec2-user@52.90.192.107:/tmp/

 echo "***********Transferring deployment file"
 sudo scp -i /opt/prod jenkins/deploy/publish.sh ec2-user@52.90.192.107:/home/ec2-user/

 echo "*****Executing script on remote server*****"

 ssh -i prod ec2-user@52.90.192.107 "./publish.sh"
