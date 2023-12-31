#!/bin/bash
#Practica 3 Ejercicio 14 - ISO 2023 - Sofia Rodriguez
if [ $# -ne 3 ]; then
	echo "no estan los parametros"
	exit 1
fi
direccion="$1"
texto="$2"
op="$3"
#cambiar textos del directorio
if [ -d "$direccion" ]; then
	for archivo in "$direccion"/*;do
		nombre_actual=$(basename "$archivo")
		extension="${nombre_actual##.}"
		nombre_sin_extension="${nombre_actual%.*}"
		if [ "$op" = "a" ]; then
			nuevo="${nombre_sin_extension}${texto}.${extension}"
		else 
			nuevo="${texto}${nombre_actual}"
		fi
	cambio="${direccion}/${nuevo}"
	mv "$archivo" "$cambio"
	echo "$cambio"
	done
else
	echo "No existe la direccion"
fi
