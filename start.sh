#!/bin/bash

#1.- Crear red para servicios sysPass:
echo "Creando red syspass-net"
docker network create syspass-net
sleep 3
#2.- Crear volúmenes fijos para los servicios de sysPass:
echo "creando volumen syspass-config"
docker volume create syspass-config
sleep 3
echo "creando volumen syspass-backup"
docker volume create syspass-backup 
sleep 3
echo "creando volumen syspass-db"
docker volume create syspass-db
#3.- Ejecutar le docker compose:
echo "Run docker compose"
sleep 3
docker-compose -f syspass.yml up -d
