#!/bin/bash

IMAGE_NAME="web-app"
# fetch latest image for the IMAGE_NAME
echo "current latest image for this application is: "
docker images | grep webapp

echo "y to proceed, any other key to exit"
read response
if [ $response="y" ]
then 
    echo "Enter the GCP Project"
    read GCP_PROJECT
    echo "Enter the version to deploy: "
    read VERSION
    docker build -t $IMAGE_NAME:$VERSION .
    docker tag $IMAGE_NAME:$VERSION gcr.io/$GCP_PROJECT/$IMAGE_NAME:$VERSION
    docker push gcr.io/$GCP_PROJECT/$IMAGE_NAME:$VERSION
else
    exit 1
fi