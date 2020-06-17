#!/bin/bash

DOCKER_PROC=$(ps -ef | grep -w docker | grep -v grep | wc -l)
if [[ $DOCKER_PROC -le 0 ]]; then
  echo "---------install docker START---------"
  # install docker
  sudo yum install -y yum-utils
  sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
  sudo yum install -y docker-ce docker-ce-cli containerd.io
  sudo systemctl enable docker
  sudo systemctl start docker
  # sudo systemctl status docker
  sudo usermod -aG docker $USER
  echo "---------install docker END---------"

  echo "---------install docker-composer START---------"
  # install docker-compose
  sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  docker-compose --version

  echo "---------install docker-composer END---------"
fi