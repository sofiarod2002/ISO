#!/bin/bash
numeros=10
for ((i=1; i<=numeros; i++))
do
	cuadrado=$(expr $i \* $i)
	echo "Numero $i , cuadrado: $cuadrado" 
done
