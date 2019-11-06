#!/bin/bash

BRANCH=$(git rev-parse --abbrev-ref HEAD)
BRANCH=${BRANCH:-"master"}
echo "Running services for branch $BRANCH"

docker run -p 8000:80 docker.pkg.github.com/real-net/microservices-sample/hello:$BRANCH &
docker run -p 8001:80 docker.pkg.github.com/real-net/microservices-sample/goodbye:$BRANCH
