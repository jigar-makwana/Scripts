#!/bin/bash

#echo "Update and upgrade all the things..." 

sudo apt-get update -y
sudo apt-get upgrade -y

#echo "Some essentials..."
sudo apt-get install -y curl wget git 




wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins

sudo apt install -y openjdk-8-jdk
sudo apt-get install -y maven

#https://support.cloudbees.com/hc/en-us/articles/216118748-How-to-Start-Stop-or-Restart-your-Instance-
#sudo service jenkins start

sudo systemctl jenkins start
sudo chkconfig jenkins on



# now after installing nginx you can start setting up java and maven path in jenkins


#  echo $JAVA_HOME

#Display JAVA_HOME variable path.
#IF NOTHING APPEARS THEN SET IT WITH THIS

#  export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64


# check maven's path by
# mvn -v



