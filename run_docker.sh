#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

export DOCKER_IMAGE_TAG=waywarddev/ml_prediction
export DOCKER_CONTAINER_NAME=ml_predictor
source ~/.bashrc
# Step 1:
# Build image and add a descriptive tag
docker build -t $DOCKER_IMAGE_TAG . 

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run --rm --name=$DOCKER_CONTAINER_NAME -p 8000:80 $DOCKER_IMAGE_TAG

