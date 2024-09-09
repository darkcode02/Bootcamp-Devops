#! /bin/bash 
#esta variable es tan solo de lectura no se puede modificar
declare -r pwdfile=/ect/passwd 

#no sirve si hago esto
#pwdfile = /etc/pasww
echo $pwdfile


