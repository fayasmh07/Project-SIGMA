#!/bin/bash

sudo apt update
#update the system

sudo apt install ufw -y
#first we need to install CLI version of GUFW

sudo apt install gufw -y
#install the GUI of GUFW

sudo ufw enable
#enabe the GUFW Firewall

#You can start GUFW from the terminal or find it in the application menu
#From terminal you can use the below command
gufw

#you can now configure the firewall as per you want.
