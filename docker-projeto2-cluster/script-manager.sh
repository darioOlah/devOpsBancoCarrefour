#!/bin/bash

sudo docker volume create app

cd /var/lib/docker/volumes/app/_data

apt-get install unzip -y

cd /tmp

wget https://github.com/darioOlah/projeto1FrontEnd/archive/refs/heads/main.zip

unzip main.zip

cd projeto1FrontEnd-main

cp -R * /var/lib/docker/volumes/app/_data

sudo apt install nfs-server -y

cd /var/lib/docker/volumes/app/_data

echo "/var/lib/docker/volumes/app/_data *(rw,sync,subtree_check)" >> /etc/exports

sudo exportfs -ar

sudo docker node update --availability drain master
