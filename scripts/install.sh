#!/bin/bash
#  
# Installiert den LAMP Stack 
#
# 

sudo apt-get install -y apache2 curl wget mysql-server mysql-clients php libapache2-mod-php php-mysql

sudo systemctl restart apache2
