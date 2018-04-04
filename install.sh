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
