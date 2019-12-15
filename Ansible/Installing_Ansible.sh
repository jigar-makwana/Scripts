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




 #### Install Ansible as a ansadmin user (on Control node)
   ```sh 
   su - ansadmin
   pip3 install ansible --user
   ``` 
      Note: Ansible must be installed as a user (here ansadmin)
1. check for ansible version 
   ```sh
   ansible --version
   ```

1. Log in as a ansadmin user on master and generate ssh key (on Control node)
   ```sh 
   ssh-keygen
   ```
1. Copy keys onto all ansible managed hosts (on Control node)
   ```sh 
   ssh-copy-id ansadmin@<target-server>
   ```
### Validation test

1. Create a directory /etc/ansible and create an inventory file called "hosts" add control node IP address in it. 
   
1. Run ansible command as ansadmin user it should be successful (Master)
   ```sh 
   ansible all -m ping
   ```







