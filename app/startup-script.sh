#!/usr/bin/bash

echo "Startup script"
sudo yum install docker -y > /tmp/install-docker.txt
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user
newgrp docker
docker info
git clone https://github.com/maolopez/ut_anagramma.git
cd ut_anagramma/
docker build -t ut-anagramma .
cd ..
docker run --restart always --name ut_anagramma -p 8082:8082 -d maolopez/ut_anagramma:latest
