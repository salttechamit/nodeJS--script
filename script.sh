#!/bin/bash

sudo apt-get update -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt -y install nodejs

sudo mkdir myapp
sudo cd myapp
npm install express --save
sudo cp /home/ubuntu/nodeJS--script /home/ubuntu/nodeJS--script/myapp/   #updaten the username

sudo npm install -g pm2
sudo pm2 start app.js
sudo pm2 status

sudo apt-get install nginx -y
sudo rm /etc/nginx/sites-available/default
sudo cp /home/ubuntu/nodeJS--script/default /etc/nginx/sites-available/default  #update the username
sudo nginx -t
sudo service nginx restart
sudo ifconfig -a
