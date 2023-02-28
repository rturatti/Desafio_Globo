#!/bin/bash
LOG=/var/log/user-data.log
echo "testando o user-data.sh" >> $LOG

apt-get update -y >> $LOG
apt-get install python3 curl git zip wget -y >> $LOG
apt-get install docker.io -y >> $LOG && apt-get install docker-compose -y >> $LOG
systemctl enable --now docker >> $LOG
systemctl start docker >> $LOG
# docker pull rodrigoturatti/desafio-globo:latest >> $LOG
# docker run --name desafio -d -it -p 8000:8000 rodrigoturatti/desafio-globo:latest >> $LOG
mkdir /app && cd /app
wget https://raw.githubusercontent.com/rturatti/Desafio_Globo/develop/app/docker-compose.yaml
docker-compose up -d >> $LOG
sleep 20s
docker container exec app_api_1 sh /app/comments.sh >> $LOG