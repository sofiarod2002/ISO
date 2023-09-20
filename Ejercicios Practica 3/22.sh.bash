#!/bin/bash
export num=(10 3 5 7 9 3 5 4)

tamanio ()
{
  echo ${#num[*]}
}
productoria ()
{
     for ((i = 0; i < 8; i++)); do
        num[i]=$((num[i] * num[i]))
	done
}

print ()
{
    echo ${num[*]}
}

print 
productoria
print