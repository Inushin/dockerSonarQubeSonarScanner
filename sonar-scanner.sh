#!/bin/bash

# SONAR_HOST: URL to SonarQube server
# SONAR_LOGIN: User key generated from SonarQube
# -v: Path to the projects folder which is going to be scanned
# --network: Docker's network to connect to SonarQube

docker run \
    --rm \
    -e SONAR_HOST_URL="http://localhost:9000" \
    -e SONAR_LOGIN="XXXXXXX" \
    -v "$(pwd)/../:/usr/src" \
    --network sonarqube_community_network \
    sonarsource/sonar-scanner-cli \
    -Dsonar.verbose=true \
    -X
