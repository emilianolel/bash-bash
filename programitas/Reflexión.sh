#!/bin/bash

#Refleja la cadena introducida.

echo "introduce una cadena:"
read cadena

len=`echo -n $cadena | wc -c`

b=`expr $len - 1`

for ((i=len-1;i>=0;i--))
do
	cadena=$cadena${cadena:$i:1}
done

echo "$cadena"
