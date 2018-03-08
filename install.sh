#!/usr/bin/env bash
sudo set -e

mkdir customer

# update instance
sudo yum -y update

# install general libraries like Java or ImageMagick
sudo yum -y install default-jre ImageMagick

# add nodejs to yum
sudo curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
sudo yum -y install nodejs #default-jre ImageMagick

# install pm2 module globaly
sudo npm install -g pm2
sudo pm2 update