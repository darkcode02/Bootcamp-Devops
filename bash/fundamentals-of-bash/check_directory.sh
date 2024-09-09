#!/bin/bash

# Pedir el nombre de la carpeta
echo "Crea el nombre de la carpeta: "
read folder

# Comprobar si la carpeta existe
if [ -d "$folder" ]; then 
    echo "La carpeta $folder existe" 
else 
    echo "La carpeta $folder no existe"
fi

# Pedir el nombre del archivo
echo "Nombre del archivo: "
read archivo

# Comprobar si el archivo existe
if [ -f "$archivo" ]; then 
    echo "Escribe tu contenido: "
    read contenido
    echo "$contenido" >> "$archivo"
else 
    echo "El archivo $archivo no existe"
fi
