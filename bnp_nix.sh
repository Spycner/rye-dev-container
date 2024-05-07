#!/run/current-system/sw/bin/bash

echo "Enter the tag for the Docker image:"
read tag

docker build -t spycner/ubuntu-rye:$tag .

if docker system info | grep -q "Username:"
then 
  echo "Logged into Docker Hub, pushing new image..."
  docker push spycner/ubuntu-rye:$tag
else
  echo "Not logged in to Docker Hub, not pushing Image."
fi
