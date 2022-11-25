#!/bin/bash
curl -fsSL get.docker.com | sudo sh
sudo usermod -aG docker $USER
