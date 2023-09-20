#!/bin/bash  
# Practica 3 Ejercicio 20 - ISO 2023 - Sofia Rodriguez
#variables globales
export pila=()
#funciones
push() 
{
    local elemento="$1"
	pila=(${pila[*]} "$elemento")
} 

pop()
{
	unset 'pila[${#pila[@]}-1]' 
}

lenght(){
	echo "Tamaño de la pila: ${#pila[*]}"
}

print(){
	echo "Elementos de la pila:"
	for elemento in "${pila[*]}"; do
		echo "$elemento"
	done
}

#programa principal
while true; do
echo "Operaciones con pila"
echo "0: Salir | 1: Push | 2: Pop | 3: Lenght | 4: print"
read opcion  

case $opcion in
"0")
	exit 1
;;
"1")
	echo "Ingrese el elemento que quiere añadir a la pila"
	read elem
	push "$elem"
;;
"2")
	pop
;;
"3")
	lenght
;;
"4")
	print
;;
*)
	echo "Numero no valido"
;;
esac
done