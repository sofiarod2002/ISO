#!/bin/bash
# Practica 3 Ejercicio 28 - ISO 2023 - Sofia Rodriguez

if [ $# -ne 1 ]; then 
	echo "No envio un argumento"
	exit 1
fi

directorio=$1
cont=0
if [ -e "$directorio" ]; then
#	for archivo in "$directorio"/*; do
#		echo "$archivo"
#		if [ -r "$archivo" ] && [ -w "$archivo" ]; then
#			cont=$((cont+1))
#		fi
#	done

	cont=$( ls -l "$directorio" | grep -E "^-rw" | wc -l )
else
	echo "No existe el directorio"
	exit 4
fi

echo "Cantidad de archivos con permiso de lectura y escritura: $cont"
#Preguntar si se puede usar tambien el for o es todo con |
