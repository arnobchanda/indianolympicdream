#!/usr/bin/env bash
set -e

# This script builds the Docker image and uploads it to the registry.
REPO_NAME=iod2
IMAGE_NAME=iod-frontend
IMAGE_TAG=latest

npm install
npm run build


docker build -t $REPO_NAME/$IMAGE_NAME:$IMAGE_TAG .
# docker login
docker push $REPO_NAME/$IMAGE_NAME:$IMAGE_TAG