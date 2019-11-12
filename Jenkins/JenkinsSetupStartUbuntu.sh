#!/bin/bash

#echo "Update and upgrade all the things..." 

sudo apt-get update 
sudo apt-get upgrade -y

#echo "Some essentials..."
sudo apt-get install -y curl wget git 



wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get install -y jenkins

sudo apt install -y openjdk-8-jdk

#https://support.cloudbees.com/hc/en-us/articles/216118748-How-to-Start-Stop-or-Restart-your-Instance-
#sudo service jenkins start

sudo systemctl jenkins start
sudo chkconfig jenkins on








