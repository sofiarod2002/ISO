#!/bin/bash
# Practica 3 Ejercicio 30 - ISO 2023 - Sofia Rodriguez

usuario=$(who | awk '{print $1}')
direccion="/home/$usuario/bin"
if ! [ -e "$direccion"  ]; then
	mkdir /home/"$usuario"/bin
fi

find /home/sofi -type f -name "*-x*" -exec cp -f {} "$direccion" \;


#no puedo guardar repetidos
