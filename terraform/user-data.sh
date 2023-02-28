#!/bin/bash
LOG=/var/log/user-data.log
echo "Criando arquivo de LOG user-data.sh" >> $LOG

apt-get update -y >> $LOG
apt-get install python3 curl git zip wget -y >> $LOG
apt-get install docker.io -y >> $LOG && apt-get install docker-compose -y >> $LOG
systemctl enable --now docker >> $LOG
systemctl start docker >> $LOG
mkdir /app && cd /app
wget https://raw.githubusercontent.com/rturatti/Desafio_Globo/develop/app/docker-compose.yaml
docker-compose up -d >> $LOG