#!/bin/bash
if [ $# -ne 1 ]; then
	exit 1
fi
buscar="$1"
#Verificar si existe o no 
if [ -e "$buscar" ];then
	if [ -d "$buscar" ]; then
		echo "El directorio existe"
	elif [ -f "$buscar" ]; then
		echo "El archivo existe"
	fi
else
	mkdir "$buscar"
	echo "No existia el directorio se lo creo"
fi


