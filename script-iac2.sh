#!/bin/bash
echo "Atualização do servidor"
apt-get update
apt-get upagrade -y
echo "instalando apache2"
apt-get install apache2 -y
echo "instalando unzip"
apt-get install unzip -y
cd /temp
echo "baixando arquivos Github"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "processo fiinalizado"
