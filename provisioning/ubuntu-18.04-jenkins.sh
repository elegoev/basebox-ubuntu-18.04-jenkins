#!/bin/bash

# update ubuntu
sudo apt -y update

# install jdk
sudo apt install -y openjdk-8-jdk

# add keys
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
echo "upgrade os ..."
sudo apt update

# install Jenkins
sudo apt install -y jenkins

# create date string
DATE=`date +%Y%m%d%H%M`

# set version
JENKINS_VERSION=$(java -jar /usr/share/jenkins/jenkins.war --version)
echo "jenkins-$JENKINS_VERSION" > /vagrant/version
