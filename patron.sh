#!/bin/bash

#Nos muestra el patron en una cadena dada

echo "introduce una cadena con un patrón repetitivo:"
read cadena

#cadena='34ft6f34pm134ft6f34pm134ft6f34pm134ft6f34pm1'

len=`echo -n $cadena | wc -c`

a=0
i=1
while [ $a -eq 0 ]; do
	if [[ ${cadena:0:1} == ${cadena:$i:1} ]]; then
		flag=0
		d=1
		lenPat=$((i -1))
		((i++))
		b="${cadena:0:1}"
		while [ $flag -eq 0 ];do
			if [[ ${cadena:$d:1} == ${cadena:$i:1} ]];then
				if [ $lenPat -eq $d ];then
					flag=1
					a=1
				fi
				b=$b${cadena:$d:1}
				((d++))
			else 
				flag=1
				b='3'
			fi
			((i++))
			if [ $i -eq $((len - 1)) ];then
				flag=1
				a=1
			fi
		done
	fi
	((i++))
	if [ $i -eq $((len - 1)) ];then
		a=1
	fi
done
echo "el patrón es: $b"
