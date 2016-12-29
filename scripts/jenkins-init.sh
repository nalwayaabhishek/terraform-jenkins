#!/bin/bash

# install jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "deb http://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y jenkins=${JENKINS_VERSION} unzip