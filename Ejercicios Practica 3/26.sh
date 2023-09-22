# !/bin/bash
# Practica 3 Ejericico 26 - ISO 2023 - Sofia Rodriguez

#funciones
esImpar () {
	num=$(( $1 % 2 ))
	if [ "$num" -eq 0 ]; then
		return 1
	else
		return 0
	fi
}

#programa principal
if [ $# -lt 1 ]; then
	echo "No envio ningun argumento"
	exit 1
fi

argumentos="$@"
num=1
for argumento in $argumentos ; do
	if  esImpar "$num" ; then
		if [ -e "$argumento" ]; then
			if [ -f "$argumento" ]; then
				echo "$argumento es un archivo"
			elif [ -d "$argumento" ]; then
				echo "$argumento es un directorio"
			fi
		else
			no_existe=$((no_existe+1))
		fi
	fi
	num=$((num+1))
done
echo "Cantidad de directorios/archivos que no existen: $no_existe"

#Preguntar = si esta bien
