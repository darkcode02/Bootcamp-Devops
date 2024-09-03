#!/bin/bash
for ((i=0; i<10; i++))  # Corrección en la condición de control del bucle
do
    if [ $i -eq 3 ] || [ $i -eq 7 ]  # Si 'i' es igual a 3 o 7
    then
        continue  # Saltar a la siguiente iteración sin imprimir 'i'
    fi  
    echo $i  # Imprimir 'i' si no es 3 ni 7
done
