#!/bin/bash

echo "escoge entre el valor 1 o 2:"
read opcion  # Lee la opción ingresada por el usuario.

case $opcion in 
    1)
        echo "Tu escogiste el numero 1"
    ;;
    2)
        echo "Tu escogiste el numero 2" 
    ;;
    *)
        echo "Valor incorrecto"  # Maneja cualquier valor distinto de 1 o 2.
    ;;
esac
