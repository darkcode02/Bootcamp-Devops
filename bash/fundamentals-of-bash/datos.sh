#!/bin/bash 
json=$(jq '.' datos.json)


echo "Contenido de Archivo JSON:"
echo "$json"
echo 

nombre=$(echo "$json" | jq -r '.nombre')
edad=$(echo "$json" | jq -r '.edad')
ciudad=$(echo "$json" | jq -r '.ciudad')

echo "Nombre: $nombre" 
echo "Edad: $edad"
echo "Ciudad: $ciudad"