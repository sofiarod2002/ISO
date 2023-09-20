#!/bin/bash
# Practica 3 Ejercicio 25 - ISO 2023 - Sofia Rodriguez
opcion=$1
#guardo los usuarios del grupo users en un arreglo
usuarios=( $(cat /etc/group | grep users | cut -d: -f4| tr ',' ' ' ))
case $opcion in
	"-b")
		pos=$2
		x=$((${#usuarios[*]} - $pos ))
		if [ $x -ge 0 ]; then 
			echo "Usuario: ${usuarios[$pos]}"
		else
			echo "No existe usuario en posicion $pos"
		fi
	;;
	"-l")
		echo "Longitud del arreglo ${#usuarios[*]}"
	;;
	"-i")
		echo "Usuarios: ${usuarios[*]}"
	;;
	*)
		echo "Operacion no valida"
		exit 1
	;;
esac
