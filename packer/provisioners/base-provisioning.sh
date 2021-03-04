#!/bin/bash

application_file_path="/vagrant/installed-application.md"

# update ubuntu
sudo apt -y update

# install jdk
while :
do
  sudo apt install -y openjdk-8-jdk
  retcode=$?
  if [ $retcode -eq 0 ]; then
    break
  fi
  echo "sleep 5s ..."
  sleep 5
done

# add keys
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
echo "upgrade os ..."
sudo apt update

# install Jenkins
while :
do
  sudo apt install -y jenkins
  retcode=$?
  if [ $retcode -eq 0 ]; then
    break
  fi
  echo "sleep 5s ..."
  sleep 5
done

# get jenkins version
JAVA_VERSION=$(java -version 2>&1 | grep openjdk | awk  '{print $3}' | tr --delete \")
JENKINS_VERSION=$(java -jar /usr/share/jenkins/jenkins.war --version)
echo "# Installed application   "  > $application_file_path
echo "***                       " >> $application_file_path
echo "> java $JAVA_VERSION" >> $application_file_path
echo "> jenkins $JENKINS_VERSION" >> $application_file_path

