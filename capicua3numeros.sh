#!/bin/bash

#Este programa puede nos dice si este número es capicúa de tres dígitos o no.

echo  "Introduce un numero de 3 cifras significativas: " 
read  numero
tm=${#numero}
b=`expr $tm - 2`
c=`expr $tm - 1`

echo
echo "Longitud del numero ingresado: $tm"
echo

if [ $numero -lt 1000 ] && [ $numero -ge 100 ] 
then
	primeracifra=`echo $numero | cut -c $tm`
	terceracifra=`echo $numero | cut -c $b`

        if [ $primeracifra -eq $terceracifra ]
           then
               echo "El numero es capicúa"
        else
             echo "El numero no es capicúa"
        fi
elif [ $numero -lt 100 ] && [ $numero -ge 10 ]
then
	
	primeracifra=`echo $numero | cut -c $tm`
	terceracifra=`echo $numero | cut -c $c`

        if [ $primeracifra -eq $terceracifra ]
           then
               echo "El numero es capicúa"
        else
             echo "El numero no es capicúa"
        fi
else
echo "Formato de número no válido"
fi
