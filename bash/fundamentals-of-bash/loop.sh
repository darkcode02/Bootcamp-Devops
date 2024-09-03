#!/bin/bash 

# Ejecutar una y otra vez cierta lógica hasta que se cumpla

numero=0 

echo "bucle while"
# comando: "while"
while [ $numero -le 10 ]
do 
    echo $numero
    numero=$((numero + 1))
done

echo "bucle until" 
# comando: "until" lo contrario a while
numero=10  # Reinicia el valor de 'numero' para evitar un ciclo infinito.
until [ $numero -ge 20 ]  # Se ejecuta hasta que 'numero' sea mayor o igual a 20.
do 
    echo $numero
    numero=$((numero + 1))
done

echo "bucle for" 
# comando: "for", este ejemplo $i avanzara de 10 en 10 hasta llegar a 100
for i in {0..100..10}
do
    echo $i
done


echo "bucle for modo clasico en lenguajes de programacion" 
#otra sintaxis mas similar a lenguajes de programacion pa ra el comando "for"

for (( i=0; i < 100; i+=20))
do
    echo $i
done 