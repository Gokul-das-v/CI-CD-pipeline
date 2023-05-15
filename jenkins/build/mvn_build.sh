echo "**********************************"
echo "***************Building JAR*************"
echo "***********************************"

docker run --rm -v /home/ec2-user/pipeline/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:latest "$@"
# /root/.m2/ ----->this is the location where maven conatiner store the dependecies so we are backing it up so that it need not be installed everytime we run it
# --rm is used to delete the cotainer once the excution is completed
