#!/bin/bash
sudo apt update && sudo apt upgrade

# Install Apache2
sudo apt -y install apache2

# Install MySql
sudo apt install mysql-server

# Install PHP
sudo apt install software-properties-common ca-certificates lsb-release apt-transport-https 

LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php 
sudo apt update 
sudo apt install php8.1 
sudo apt install php8.1-mysql php8.1-mbstring php8.1-xml php8.1-curl