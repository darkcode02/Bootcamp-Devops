#!/bin/bash

echo "Ingresa tu nombre" 
read nombre
echo "Escribe un adjetivo" 
read adjetivo

resultado="$nombre is $adjetivo"
echo $resultado

#otras funcionalides convertir a minusculas
echo "nombre convertido a minusculas: ${nombre,,}"

echo "nombre convertido a mayusculas: ${nombre^^}"

#solo vocales o caracteres que queramos
echo ${nombre,,[AEIOU]}
echo ${nombre^^[aeiou]}

