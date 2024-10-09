#!/bin/bash


echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Baixando  e instalando aplicações de servidor..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Acessando diretório tmp ..."
cd /tmp

echo "Baixando projeto no diretório tmp ..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Desconpactando projeto..."
unzip main.zip

echo "Acessando diretório descompactado..."
cd linux-site-dio-main

echo "Copiando e colando conteúdo do arquivo descompactado para a pasta padrão do apache..."
cp -R * /var/www/html/
