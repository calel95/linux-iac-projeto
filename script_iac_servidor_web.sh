#!/bin/bash

echo "Atualizando sistema..."
apt update -y
apt upgrade -y

echo "Sistema atualizado!"


echo "Instalando apache2..."
apt install apache2 -y
echo "Instalando unzip..."
apt install unzip -y
echo "Indo para a pasta /tmp"
cd /tmp
echo "Baixando repositorio do git..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Fazendo unzip do repositório..."
unzip main.zip
echo "copiando arquivos para o repositório do servidor apache"
cp /tmp/linux-site-dio-main/* /var/www/html/ -r -v

echo "Script finalizado!"
