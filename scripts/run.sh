#!/bin/bash

echo "Starting Container on port 8080"

# docker container run -p 5000:5000 trivy-scan:1

cd ../src/main/docker 

docker-compose up 
 