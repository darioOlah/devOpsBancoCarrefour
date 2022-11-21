#!/bin/bash

sudo apt install nfs-common -y

cd /var/lib/docker/volumes

mkdir app

cd /var/lib/docker/volumes/app

mkdir _data

sudo mount 10.10.10.100:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data
