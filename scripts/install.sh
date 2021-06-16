#!/bin/bash
#  
# Installiert den LAMP Stack 
#
# 

sudo apt-get install -y apache2 curl wget mysql-server php libapache2-mod-php php-mysql adminer

sudo systemctl restart apache2
