#!/bin/bash

echo "introduce una cadena:"
read cadena

len=`echo -n $cadena | wc -c`

b= `expr $len - 1` 2>/dev/null

cad=''

for ((i=len-1;i>=0;i--));
do
	cad=$cad${cadena:$i:1}
done

echo "$cad"	

