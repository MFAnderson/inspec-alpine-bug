#!/bin/bash

docker build -t inspec-alpine-demo:latest docker/
echo "#### LAUNCHING CONTAINER"
docker run --name demo -d inspec-alpine-demo:latest
echo "#### EXECUTING TESTS"
inspec exec default -t docker://demo
echo "#### RUNNING ps ON CONTAINER FOR COMPARISON"
docker exec demo ps
docker kill demo &>/dev/null && docker rm demo &>/dev/null

