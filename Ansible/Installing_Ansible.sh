#### On Ubuntu  server

#!/bin/bash
sudo bash



apt-get update -y
apt-get upgrade -y


apt-get install -y python3
apt install -y python3-pip python-pip
pip3 install awscli
pip3 install ansible
pip3 install boto boto3

#aws configure
#cat .aws/credentials

#AccessKeyId: #########################
#SecretAccessKey: #####################################


#Create a new user for ansible andministation & grant admin access to user (master and Slaves)
#useradd ans1
#passwd ans1


#Enable user Login on all EC2 (master and Slaves)
#vi /etc/ssh/sshd_config


#Login as a ans1 user on master and generate ssh key (Master)
#ssh-keygen -t rsa


#Cpoy Keys to target server (Master)
#ssh-copy-id <target-server>

#Update target servers information on   /etc/ansible/hosts file (Master)
#echo "10.0.0.111" > /etc/ansible/hosts
#adding slave privae ip


#run ansible command as a ans1 user (master)
#ansible all -m ping












