#! /bin/bash
sudo apt-get update
sudo apt-get install -y nginx
sudo apt-get install -y git 
sudo rm -vrf /var/www/html
sudo git clone https://github.com/Jaibw/FrozenYogurtShop.git /var/www/html
sudo systemctl start nginx
sudo systemctl enable nginx
