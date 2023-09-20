#!/bin/bash
# Practica 3 - Ejercicio 15 - ISO 2023 - Sofia Rodriguez
if [ $# -ne 1 ]; then
	echo "Debe pasar una extension"
	exit 1
fi
ext="$1"
cantidad=$(find ~/ -name "*$ext" | wc -l)
echo "Usuario: $USER | Cantidad de archivos $ext : $cantidad" >> /home/sofi/Documents/P3/reporte.txt

#Consultar: esto seria lo que hay que hacer? o son columnas con todos los usuarios?
