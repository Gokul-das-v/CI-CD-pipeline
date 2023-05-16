#!/bin/bash
#
 echo maven_praject >/tmp/.auth
 echo $BUILD_TAG >> /tmp/.auth
 echo $PASS >> /tmp/.auth

 echo "*****Transferring configuration File *******"
 scp -i /opt/prod /tmp/.auth ec2-user@52.90.192.107:/tmp/

 echo "***********Transferring deployment file*******"
 
 scp -i /opt/prod jenkins/deploy/publish.sh ec2-user@52.90.192.107:/home/ec2-user/

 echo "*****Executing script on remote server*****"

 ssh -i /opt/prod ec2-user@52.90.192.107 "./publish.sh"
