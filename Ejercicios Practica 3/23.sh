#!/bin/bash
# Practica 3 Ejercicio 23 - ISO 2023 - Sofia Rodriguez
export vector=(1 6 2 3 4 7 7 8)

esPar () {
numero=$(( $1 % 2 ))
if  [ "$numero" -eq 0 ]; then 
	return 0
else
	return 1
fi
}

recorrer(){
	for ((i = 0; i < ${#vector[*]}; i++)); do
		if esPar "${vector[i]}" ; then
			echo "${vector[i]}"
		else
			impares=$(($impares + 1))
		fi
	done
	echo "Cantidad de numeros impares: $impares"
}

recorrer 
