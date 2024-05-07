#!/bin/bash

echo "Enter the tag for the Docker image:"
read tag

docker build -t ubuntu-rye:$tag .

if docker system info | grep -q "Username:"
then 
  echo "Logged into Docker Hub, pushing new image..."
  docker tag ubuntu-rye:$tag spycner/ubuntu-rye:$tag
  docker push spycner/ubuntu-rye:$tag
else
  echo "Not logged in to Docker Hub, not pushing Image."
fi
