#!/bin/bash

sudo docker service create --name web-apache --replicas 15 -dt -p 80:80 --mount type=volume,src=app,dst=/usr/local/apache2/htdocs/ httpd