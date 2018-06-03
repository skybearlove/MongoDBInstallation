#!/bin/bash
# Author: Ian Lin

# install curl package
apt-get install -y curl

# curl docker file and pipe into sh
curl -fsSL https://get.docker.com/ | sh

# create group "docker"
groupadd docker
# add your account into "docker" group
usermod -aG docker $"USER"

## start docker daemon on ubuntu 16.04
sudo systemctl start docker
sudo systemctl enable docker

##check docker version
docker --versions