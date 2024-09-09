#!/bin/bash

# Verifica que se han pasado al menos dos argumentos
if [ $# -lt 2 ]; then
    echo "Error: Se requieren al menos dos argumentos"
    exit 1
fi

# Comparación numérica
if [ $1 -gt $2 ]; then
    echo "El Argumento 1 es mayor que el 2"
else
    echo "El Argumento 2 es mayor que el 1"
fi

# Los argumentos se separan por espacios dentro de la consola al ejecutar nuestro script 
echo "Todos los argumentos: $@"

# Para contar los argumentos que estamos pasando
echo "Cantidad de argumentos: $#"

# Ingresarlos a una lista
args=("$@")
echo "Resultado: ${args[0]}"
