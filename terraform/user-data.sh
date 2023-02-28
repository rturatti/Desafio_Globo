#!/bin/bash
LOG=/var/log/user-data.log
echo "testando o user-data.sh" >> $LOG

apt-get update -y >> $LOG
apt-get install python3 curl git zip -y >> $LOG
apt-get install docker.io -y >> $LOG
systemctl enable --now docker >> $LOG
systemctl start docker >> $LOG
docker pull rodrigoturatti/desafio-globo:latest >> $LOG
docker run --name desafio -d -it -p 8000:8000 rodrigoturatti/desafio-globo:latest >> $LOG
sleep 20s
docker container exec desafio-globo sh /app/comments.sh >> $LOG