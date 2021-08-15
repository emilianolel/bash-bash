#!/bin/bash

#este programa nos permite saber si un string es numérico, alfabético o alfanumérico.

#Expresion regular
          
palabra='^[A-Za-z]+$' 
numero='^[0-9]+$' 
nada=''
          
if  [ $# -eq 0 ] 
  then 
      echo "" 
      echo " No tecleaste nada"
      echo "" 
else 
    if [[  $1  =~  $palabra ]] 
    then 
      lon=`echo $1 |wc -c   `
      echo "" 
      echo "Es una palabra sin numeros, tienes una longitud de  ` expr $lon - 1 ` "
       echo "" 
    elif [[  $1  =~  $numero ]] 
    then 
        lon=`echo $1 |wc -c   `
        echo "" 
        echo "Eres un numero, de ` expr $lon - 1  ` cifras"
        echo "" 
    else
        echo "" 
        echo " Eres una combinacion de numeros,letras o caracteres "
        echo "" 
    fi
fi
