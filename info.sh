#!/bin/bash

while true
do
	DATA=$(date +%H:%M:%S-%D)
	echo "$DATA Servidor Ativo" > var/www/html/index.html
	sleep 5
done
