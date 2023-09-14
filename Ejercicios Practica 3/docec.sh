#!/bin/bash 
if [ $# -ne 3 ]; then
	echo "No paso los 3 argumentos"
	exit 1
fi
numero1="$1"
numero2="$2"
operando="$3"
#Case para realizar una operacion
case "$operando" in 
	"+")
		resultado=$((numero1+numero2))
		echo "Entre a la suma"
	;;
	"-")
		resultado=$((numero1-numero2))
	;;
	"*")
		resultado=$((numero1*numero2))
	;;
	"/")
		resultado=$((numero1/numero2))
	;;	
	esac
echo "Resultado: $resultado"

