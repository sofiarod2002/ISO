#!/bin/bash
if [ $# -ne 1 ]; then
	echo "No mando un usuario por parametro"
	exit 1
fi

usuario="$1"

until who | grep -wq "$usuario"; do
	sleep 10
done
	echo "Se logeo el usuario $usuario"
