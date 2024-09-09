#! /bin/bash 

echo "Ingresa tu contrasena:"
read input1 

echo "repite tu contrasena:"
read input2 

echo "$input1 $input2" 

if [ $input1 == $input2 ]
then 
    echo "contrasena correcta" 
else
    echo "contrasena incorrecta"
fi 
