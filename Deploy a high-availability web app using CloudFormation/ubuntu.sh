#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo apt-get install awscli -y
sudo apt-get install unzip -y
sudo aws s3 cp s3://udagram-bucket-sherifhmdy/udagram.zip /var/www/html/
sudo unzip /var/www/html/udagram.zip -d /var/www/html/
sudo rm -rf /var/www/html/udagram.zip
sudo systemctl start apache2.service