#!/bin/sh

cd /home/yc-user
apt-get install ca-certificates apt-transport-https -y
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list

apt-get update && apt-get install -y mongodb-org
systemctl start mongod && systemctl enable mongod
