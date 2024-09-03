#! /bin/bash

age=12

#condicionales: comando "-eq" nos sirve para comprobar si el valor es igual
if [ $age -eq 10  ]
then
    echo "El numero de tu edad es igual a 10"
fi

#comando "-ge" nos sirve para comprobar si es mayor o igual que
if [ $age -ge 10  ]
then
    echo "El numero de tu edad es mayor o igual que 10"
fi

#comando "-ge" nos sirve para comprobar si es menor o igual que
if [ $age -le 10  ]
then
    echo "El numero de tu edad es menor o igual que 10"
fi


#Condicional:else (negacion)
if [ $age -le 10  ]
then
    echo "El numero de tu edad es menor o igual que 10"
else
    echo "El numero es mayor que 10"
fi


#otra sintaxis mas similar a los lenguajes de programacion y tambien el condicional elif
if (( $age >= 18 )
then
    echo "Eres un adulto"
elif (( $age >= 17 ))
then
    echo "casi eres un adulto"
else
    echo "Eres un nino"
fi

