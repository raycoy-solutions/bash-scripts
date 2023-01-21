#!/bin/bash

# variables
PACKAGE="wget unzip httpd"
SERVICE="httpd"
TEMPDIR="/tmp/webfiles"

echo "########################################"
echo "Installing Packages"
echo "########################################"
sudo yum install $PACKAGE -y > /dev/null
echo

echo "########################################"
echo "Create temp directory"
echo "########################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

echo "########################################"
echo "Start Deployment"
echo "########################################"
wget $1 > /dev/null
unzip $2.zip > /dev/null
cd $2
sudo cp -r * /var/www/html/
echo

echo "########################################"
echo "Start httpd servicd"
echo "########################################"
sudo systemctl start $SERVICE > /dev/null
sudo systemctl enable $SERVICE
echo

echo "########################################"
echo "Remove temporary files"
echo "########################################"
rm -rf $TEMPDIR