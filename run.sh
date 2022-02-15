#!/bin/bash
echo "Starting clean install"

mvn clean install 

cp -r target/docker-java-sample-webapp-1.0-SNAPSHOT.war src/main/docker/

echo "Install complete, starting docker build"

cd src/main/docker

docker build -t trivy-scan:1 . 

echo "Docker Build Complete, starting Trivy Scan"


trivy image ${DOCKER_OCBC_DEV_REPO}/oracle/billingcare:${RELEASE_VERSION}-${PIPELINE_TAG} > scan.txt


echo "Starting Container on port 8080"

# docker container run -p 5000:5000 trivy-scan:1

docker-compose up 
 
# docker build -t ${DOCKER_OCBC_DEV_REPO}/oracle/billingcare:${RELEASE_VERSION}-${PIPELINE_TAG} .
