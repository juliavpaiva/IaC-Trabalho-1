#!/usr/bin/env bash
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install openjdk-11-jre-headless -y
curl https://raw.githubusercontent.com/rundeck/packaging/main/scripts/deb-setup.sh 2> /dev/null | sudo bash -s rundeck
sudo service rundeckd start