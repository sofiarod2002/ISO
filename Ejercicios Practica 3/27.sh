#!/bin/bash
# Practica 3 Ejercicio 27 - ISO 2023 - Sofia Rodriguez

#variables globales
export vector

#funciones
inicializar() {
	vector=()
}

agregar_elem() {
	local elem="$1"
	vector=(${vector[*]} "$elem")
}

eliminar_elem() {
	local pos="$1"
	if [ $pos -ge 0 ] && [ $pos -lt ${#vector[*]} ]; then
		unset 'vector[$pos]'
	fi
}

longitud() {
	echo "Longitud del vector: ${#vector[*]}"
}

imprimir() {
	echo "Elementos del vector: ${vector[*]}"
}

inicializar_con_valor() {
	local longitud="$1"
	local valor_inicial="$2"
	vector=()
	for (( i=0; i < $longitud; i++ )); do
	#	vector=(${vector[$i]} "$valor_inicial")
		vector+=("$valor_inicial")
	done
}

#programa principal
inicializar
agregar_elem 2
agregar_elem 6
agregar_elem 8
echo "Vector con 3 numeros"
imprimir
longitud
echo "Vector con 2 numeros"
eliminar_elem 1
imprimir
longitud
echo "Vector con 8 ceros"
inicializar_con_valor 8 0
imprimir

#Preguntar como inicialziar el vector con valor como vimos en la catedra
