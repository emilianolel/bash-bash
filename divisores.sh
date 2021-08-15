#!/bin/bash

### Programa que dice los divisores de un numero dado y que nos dice si se trata de un primo o no.
ndivisor(){
n=$numero
while [ $n -ge 1 ]
do
	divisor=`echo "scale=0; $numero%$n" |bc -l `
    if [ $divisor  -eq 0 ]
	then
		num="$n $num"
    fi
	n=`expr $n - 1 `
done 
cont=0
for i in $num
do
	echo $i
	cont=`expr $cont + 1`
done
}


validarp(){
	sum=`expr $1`
	echo "----el numero de divisores $sum"
if [ $1 -gt 2 ]
 then
 echo " El numero $numero no es primo"
else 
  echo "El numero $numero es primo"
fi
}
######Programa Principal #######

echo Introduce un numero
read numero
ndivisor
echo "Los divisores son: $num"
validarp $cont

