#!/usr/bin/env bash
sudo set -e

# update instance
sudo yum -y update


#install mysql
sudo yum install mysql-server -y

#start mysql daemon
sudo service mysqld start

#Create database
cd ~/customer
sudo cat customer.sql | mysql --user=root --password=''

# add nodejs to yum
sudo curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
sudo yum -y install nodejs

# install pm2 module globaly
sudo npm install -g pm2
sudo pm2 update