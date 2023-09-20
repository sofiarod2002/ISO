#!/bin/bash
while true; do
	echo "Seleccion una opcion"
	echo "0 : Salir"
	echo "13: Ejercicio 13"
	echo "16: Ejercicio 16"

	read opcion

	case $opcion in
	"0")
		exit 0
	;;
	"13")
		bash trece.sh
	;;
	"16")
		echo "Ingrese una extencion"
		read ext
		bash 16.sh ext
	;;
	*)
		echo "No es valido el numero ingresado"
	;;
	esac
done
