#!/bin/bash

#programa que genera números aleatorios

inicio=0
col=0
echo "  Cuantos numero deseas generar "
read numeros
echo $numero
 while [ $inicio -lt $numeros ]
  do
     
    inicio=`expr $inicio + 1  `
    numero=`date +%N`
    na=`echo "scale=2; (sqrt($numero) / 10) + 2 " | bc  -l  `
    na_1=`echo $na |cut -d. -f2 ` 
    if [ $col -eq 5 ]
      then
	  echo
          echo -n "    $na_1"
          col=1 
     else 
          echo -n "    $na_1"
          ((col++))
    fi 
  done
echo " "

