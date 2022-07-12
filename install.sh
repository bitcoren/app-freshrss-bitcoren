#!/usr/bin/env bash

DIR=$MURZILLA/apps/app-freshrss-bitcoren/certs
if [ ! -d "$DIR" ]; then
mkdir certs
openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes  -keyout certs/cert.key -out certs/cert.crt \
 -subj "/CN=example.com" -addext "subjectAltName=DNS:example.com,DNS:www.example.net,IP:192.168.1.100"
fi
docker-compose up -d
