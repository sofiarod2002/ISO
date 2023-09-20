#!/bin/bash
echo "Los directorios que se encuentran"
ls
echo "Cambio en directorios" 
ls | tr 'a-z''A-Z' 'A-Z''a-z' | tr -d 'A''a'
