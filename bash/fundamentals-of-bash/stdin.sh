#! /bin/bash

while read line
do
    echo $line
done < "${1:-/dev/stdin}"

#stdin es un interpretador de inputs que viene instalado con bash
#nos permite leer cualquier entrada incluso un archivo de texto que le pasemos
#en este caso le estoy pasando un archivo y lo interpreta como el argumento 1 

