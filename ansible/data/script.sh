#!/bin/bash

# Set your Docker Hub username and image name
DOCKER_USERNAME="chocoman55"
IMAGE_NAME="nginx-custom"
TAG="v5.7"

# Build the Docker image
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

# Log in to Docker Hub
docker login

# Push the Docker image to Docker Hub
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG