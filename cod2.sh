#!/bin/bash

echo "***Atualização Servidor***"
apt update
apt upgrade -y

echo "***Instalação Apache***"
apt install apache2 -y

echo "*** Instalação Unzip***"
apt install unzip -y

echo "Aplicações WEB"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
