#! /bin/bash

age=22


# 18 < age <40 
if [ $age -gt 18  ] && [ $age -lt 40 ]
then
    echo "edad valida"
else 
    echo "edad invalida"
fi 

#otra sintaxis 
# 18 < age <40 
if [[ $age -gt 18   &&  $age -lt 40 ]]
then
    echo "edad valida"
else 
    echo "edad invalida"
fi 

#y otra sintaxis 
# 18 < age <40 
if (( $age > 18  &&  $age < 40 ))
then
    echo "edad valida"
else 
    echo "edad invalida"
fi 

#operador: "or"

# 18 < age <40 
if [ $age -gt 18  ] || [ $age -lt 40 ]
then
    echo "edad valida"
else 
    echo "edad invalida"
fi 