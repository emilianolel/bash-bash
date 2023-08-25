#!/bin/bash

#Factorial del un número

echo "dame numero"
read numero
var=$numero
var2=$numero
for ((i=$numero-1; i>=1; i--))
do
var="$var X $i"
var2=`expr $var2 \* $i` 
done
echo "$numero!=$var=$var2"
