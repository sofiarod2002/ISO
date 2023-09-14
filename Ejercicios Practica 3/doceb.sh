#!/bin/bash 
if [ $# -ne 2 ]; then
	echo "No paso 2 argumentos"
	exit 1
fi
numero1="$1"
numero2="$2"
#Imprimir suma, resta, multiplicacion y cual es mayor
suma=$((numero1+numero2))
resta=$((numero1-numero2))
echo "Resultado de suma: $suma,  Resultado de resta:$resta"
multiplicacion=$((numero1*numero2))
echo "Resultado multiplicacion: $multiplicacion"
#mostrar cual es mayor
if [ "$numero1" -ge "$numero2" ]; then
mayor="$numero1"
else
mayor="$numero2"
fi
echo "El numero mas grande es el $mayor"
