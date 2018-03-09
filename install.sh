#!/usr/bin/env bash
sudo set -e

# update instance
sudo yum -y update

# install general libraries like Java or ImageMagick
sudo yum -y install default-jre ImageMagick

#install mysql
sudo yum install mysql-server -y

#start mysql daemon
sudo service mysqld start

#Create database
sudo mysql --user=root --password='' nodejs < customer.sql

# add nodejs to yum
sudo curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
sudo yum -y install nodejs

# install pm2 module globaly
sudo npm install -g pm2
sudo pm2 update