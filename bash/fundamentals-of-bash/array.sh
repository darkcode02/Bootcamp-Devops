#!/bin/bash 

names=("juan" "Pablo" "james" "vale")

echo "Los nombres son: ${names[*]} y el elemento en la posición 1 es ${names[1]}"

echo "Los índices de la lista son: ${!names[@]}"
echo "Los elementos de la lista son: ${#names[@]}"

last_index=$((${#names[@]}-1))
echo "El último elemento es: ${names[$last_index]}"

# Recorrer los elementos
for name in "${names[@]}"
do 
    echo "My name is: $name"
done

# Eliminar elementos que le pidas por consola
echo "Ingresa el nombre de la lista: ${names[@]} , que quieras borrar: "
read nombre_a_borrar

for i in "${!names[@]}"
do
    if [ "${names[$i]}" == "$nombre_a_borrar" ]
    then
        unset 'names[i]'
    fi
done 

echo "Lista final: ${names[@]}"


#anadir un elemento ( append ) a la ultima posicion
names[${#names[@]}]="natalia"
echo "Lista final: ${names[@]}"

#otra forma
echo "Ingresa el elemento que quieras agregar"
read elemento_nuevo
names+=($elemento_nuevo)
echo "Lista final: ${names[@]}"

#actualizar un elemento por su posicion

names[2]="panchovilla"
echo "Lista final: ${names[@]}"