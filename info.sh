#!/bin/bash

while true
do
	DATA=$(date +%H:%M:%S-%D)
	echo "$DATA Servidor Ativo" >> var/log/mansagens.log
	eleep 5
done
