#!/bin/bash
# Practica 3 Ejercicio 24 - ISO 2023 - Sofia Rodriguez
export vector1=(2 3 4 5)
export vector2=(1 1 1 1)

sumarVectores () {
	for ((i=0; i < ${#vector1[*]}; i++ )); do
		suma=$(( vector1[i] + vector2[i] ))
		echo "La suma de los elementos en la posicion $i es $suma"
	done
}

sumarVectores
