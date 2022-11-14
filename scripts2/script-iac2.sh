#!/bin/bash

echo "Buscando atualizações"

apt-get update

echo "Atualizando o servidor..."

apt-get upgrade -y

echo "Instalando Apache 2..."


apt-get install apache2 -y


echo "Instalando Unzip..."


apt-get install unzip -y


echo "Acessando diretório tmp..."

cd /tmp

echo "Realizando download dos arquivos necessários..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."

unzip main.zip

echo "Acessando diretório linux-site-dio-main..."

cd linux-site-dio-main

echo "Copiando arquivos para o diretório padrão do Apache..."

cp -R * /var/www/html/


