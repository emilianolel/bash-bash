#! /bin/bash

#programa que checa si el archivo existe y checa si contiene letras o números.

echo "Programa que valida que el archivo solo contenga numeros"
echo " Dame el archivo "
read archivo
if [ -f $archivo ] 
  then
   echo "El archivo existe"
   nol=`grep  "[a-z]" $archivo `
   if [ -z "$nol" ] 
     then
       echo "Hay numeros"
   else
     echo "El archivo tiene letras"
 
     fi 
 else
   echo "El archivo no existe"
fi
