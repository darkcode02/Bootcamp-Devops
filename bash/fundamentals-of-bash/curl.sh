#! /bin/bash 

echo "Ingresa tu url: "
read url 
 
curl $url > user.json

#esto se puede hacer para todo tipo de archivos, imagenes texto videos etc
#solo se debe cambiar la extension en la que se guarda

