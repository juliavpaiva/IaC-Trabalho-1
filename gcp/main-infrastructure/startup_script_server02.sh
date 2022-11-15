#!/bin/bash

sudo apt-get update

# Install Apache2
sudo apt -y install apache2

# Install MySql
sudo apt install mysql-server

# Install PHP
sudo apt-get install apache2 php libapache2-mod-php
sudo apt-get install php-soap php-xml php-curl php-opcache php-gd 
php-sqlite3 php-mbstring