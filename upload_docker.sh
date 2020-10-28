#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="nassercsed/deploy_ml"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=nassercsed
docker tag deploy_ml nassercsed/deploy_ml

# Step 3:
# Push image to a docker repository
docker image push nassercsed/deploy_ml
