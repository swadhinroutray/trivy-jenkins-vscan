#!/bin/bash

echo "Starting clean install"

cd .. 

mvn clean install 

cp -r target/docker-java-sample-webapp-1.0-SNAPSHOT.war src/main/docker/

cd src/main/docker

docker build -t trivy-scan:1 . 
