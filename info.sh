#!/bin/bash

while true
do
   DATA=$(date +%H:%M:%S-%D)
   echo "Horario da coleta: $DATA <br>" > /var/www/html/index.html
   TIME1=$(uptime | cut -f4  -d' ' )
   TIME2=$(uptime | cut -f5  -d' ' )
   echo "Tempo que a maquina esta ativa: $TIME1 $TIME2 <br>" >> /var/www/html/index.html
   CARGA1=$(uptime | cut -f3 -d',')
   CARGA2=$(uptime | cut -f4 -d',')
   CARGA3=$(uptime | cut -f5 -d',')
   echo "Carga media do ultimo minuto: $CARGA1 <br>" >> /var/www/html/index.html
   echo "Carga media dos ultimos cinco  minutos: $CARGA2 <br>" >> /var/www/html/index.html
   echo "Carga media dos ultimos quinze minutos: $CARGA3 <br>" >> /var/www/html/index.html
   MEMORIALIVRE=$(free | tr -s ' ' | grep "Mem" | cut -f3 -d' ')
   MEMORIAOCUPADA=$(free | tr -s ' ' | grep "Mem" | cut -f4 -d' ')
   echo "Memoria livre do sistema: $MEMORIALIVRE <br>" >> /var/www/html/index.html
   echo "Memoria ocupada do sistema: $MEMORIAOCUPADA <br>" >> /var/www/html/index.html
   BYTESR=$(cat /proc/net/dev | tr -s ' '| grep "eth0" | cut -f3 -d' ')
   BYTERE=$(cat /proc/net/dev | tr -s ' '| grep "eth0" | cut -f11 -d' ')
   echo "Bytes recebidos pela interface eth0: $BYTESR <br>" >> /var/www/html/index.html
   echo "Bytes enviados pela interface eth0: $BYTERE <br>" >> /var/www/html/index.html
   sleep 5
done
