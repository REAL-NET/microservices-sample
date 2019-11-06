#!/bin/bash

DIR=${1:-"."}
BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "Build local docker image for branch $BRANCH"

docker build -t docker.pkg.github.com/real-net/microservices-sample/goodbye:$BRANCH $DIR
