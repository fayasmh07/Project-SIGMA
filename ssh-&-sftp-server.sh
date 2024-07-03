#!/bin/bash

sudo apt update && sudo apt upgrade -y
#update your server

sudo apt install openssh-server
#installing required package for ssh server

sudo systemctl enable ssh
sudo systemctl start ssh
#this will enable and start the ssh service

sudo ufw allow ssh
#to allow ssh connection if ufw firewall is estblished

# ssh your_username@machine_ip -p 22
#command to access the ssh in the server from another machine



  
