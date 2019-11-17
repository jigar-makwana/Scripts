#one master and one slave.
#both in same subnet
#both EC2 can be access by same user in AWS


#create public and private keys
 
ssh-keygen -t rsa 

# i'll be saved at /root/.ssh/id_rsa 

#you can copy public key to your remote server's /root/.ssh/  authorized_keys

cat ~/.ssh/id_rsa.pub 

#copy the public key and paste it in your remote server's /root/.ssh/ authorized_keys file 

nano ~/root/.ssh/authorized_keys

#and now you can ssh into your remote server from current server where you created public and private key



