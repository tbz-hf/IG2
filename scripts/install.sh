#!/bin/bash
#  
# Installiert den LAMP Stack 
#
# 

sudo apt-get update
sudo apt-get install -y apache2 curl wget mysql-server php libapache2-mod-php php-mysql adminer

# MySQL Admin Web UI
sudo a2enconf adminer
sudo systemctl restart apache2

# Introseite 
bash -x /opt/lernmaas/helper/intro

# PHP Startseite
cat <<%EOF% >~/data/index.php
 <?php echo '<p>In diesem Verzeichnis koennen eigene PHP Dateien abgelegt werden.</p>'; ?>
%EOF%

# Konfiguration von MySQL
cat <<%EOF% | sudo mysql 
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY "$(cat ~/data/.ssh/passwd)";
FLUSH PRIVILEGES;
%EOF%
