#!/bin/bash

sudo apt update && sudo apt upgrade -y
#update and upgrade

sudo apt install apache2 -y
#install apache package for linux

sudo systemctl enable apache2
sudo systemctl start apache2
#to start and enable apache service

sudo systemctl status apache2
#to know the apache status
