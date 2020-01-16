#!/bin/bash

echo "***************************"
echo "****Pushing image**********"
echo "***************************"

IMAGE=maven-project

echo "****Login to Docker Hub****"

docker login -u narrrav -p $PASS

echo "****Tagging image****"

docker tag $IMAGE:$BUILD_TAG narrrav/$IMAGE:$BUILD_TAG

echo "****Pushing image****"

docker push narrrav/$IMAGE:$BUILD_TAG

