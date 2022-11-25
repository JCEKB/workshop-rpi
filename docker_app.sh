#!/bin/bash

# Watchtower
docker run -d --name watchtower --restart always --volume /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower

# Pi-Hole
docker run -d --name pihole --restart always --publish 53:53/tcp --publish 53:53/udp --publish 8880:80 pihole/pihole:latest
sudo ufw allow 8880
sudo ufw allow 53

# Node-Red
docker run -d --name nodered --restart always --publish 1880:1880 --volume node_red_data:/data nodered/node-red:latest
sudo ufw allow 1880
