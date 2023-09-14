#!/bin/bash
echo "Elija una opcion 1 : Listas | 2 : Donde Estoy | 3 : Quien esta"
read opcion
case $opcion in
	"1")
		ls 
	;;
	"2")
		pwd
	;;
	"3")
		who
	;;
	*)
	echo "No es un numero valido"
	;;
esac
