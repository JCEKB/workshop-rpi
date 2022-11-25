#!/bin/bash

# Portainer
docker run -d --name portainer --restart always --publish 9000:9000 --publish 9443:9443 --volume /var/run/docker.sock:/var/run/docker.sock --volume portainer_data:/data portainer/portainer-ce:latest
