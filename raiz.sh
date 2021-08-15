#!/bin/bash

echo "====================================="
echo "PROGRAMA QUE CALCULA LA RAIZ CUADRADA"
echo "====================================="
echo "dame un numero"
read num
raiz=$num
ite=0
    

  while [ $ite -ne $raiz ]
   do
        ite=raiz
        raiz=`echo " scale=1;($num / $raiz + $raiz) / 2 " |bc -l`
   done 2> /dev/null
     echo  "==>  La raiz es: $raiz"


