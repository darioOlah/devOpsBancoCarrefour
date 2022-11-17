#!/bin/bash

cd /

echo "Criando diretório do projeto..."

mkdir /docker-projeto1-dio/

echo "Diretório criado com sucesso!"

echo "Clonando arquivos do site Netflix Clone para o diretório do projeto..."

cd /docker-projeto1-dio/

git clone https://github.com/darioOlah/netflixDio.git

echo "Arquivos clonados com sucesso!"

echo "Movendo arquivo YAML para o diretório do projeto"

mv /docker-projeto1-dio/netflixDio/compose.yml /docker-projeto1-dio/compose.yml

cd /docker-projeto1-dio/

echo "Arquivo YAML movido com sucesso"

echo "Executando Docker Compose"

docker-compose up -d

echo "Container criado com sucesso"

echo "Acesse o site a partir do IP do servidor"
