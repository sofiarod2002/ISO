#!/bin/bash
# Practica 3 Ejercicio 29 - ISO 2023 - Sofia Rodriguez

export arreglo=()
export pos

mapfile -t arreglo < <(find /home/sofi/prueba -type f -name "*.doc" )

cantidad_archivos() {
	echo " Cantidad de archivos: ${#arreglo[*]}"
}

buscar_archivo() {
	local nombre=$1
	pos=-1
	for i in "${!arreglo[@]}"; do
		echo "DATO: ${arreglo[i]}"
		if [ "$arreglo[i]" == "$nombre"  ]; then
			pos="$i"
		fi
 	done
	if [ "$pos" -eq -1 ]; then
		echo "Archivo no encontrado"
		exit 5
	fi
}

ver_archivo() {
	local nombre=$1
	echo "$nombre"
	local i=$(buscar_archivo "$nombre")
	cat "${arreglo[i]}"
}

borrar_archivo() {
	local nombre=$1
	local i=$(buscar_archivo "$nombre")
	echo "¿Quiere borrar el archivo logicamente?"
	read op

	case "$op" in 
	"Si")
		unset arreglo["$i"]
	;;
	"No")
		unset arreglo["$i"]
		sudo rm $elem
	;;
	*)
		echo "Opcion no valida"
	;;
	esac
}

echo "Elementos: ${arreglo[*]}"
ver_archivo /home/sofi/prueba/dos.doc

#Consultar parte de busqueda que no funciona
