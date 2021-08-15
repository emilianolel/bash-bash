#!/bin/bash

#programa que devuelve un rombo

echo "¿Cuántos pisos quieres que tenga el triangulo superior de tu rombo?"
read pisos
echo "Introduce cualquier cosa"
read alfa

clear

len=`echo -n $alfa | wc -c`
beta=''
gamma=`echo "scale=0; $pisos/$len" | bc -l`
resta=`echo "$pisos-$len*$gamma" | bc -l`

pisos1=`echo "2*$pisos" | bc -l`
pisos2=`echo "2*$pisos+1" | bc -l`

if [ $pisos -le 0 ]
then
        echo "------------------------------------------------------------------"
        echo "------------------------------------------------------------------"
        echo "----------Ingresa un número natural (cero no es natural)----------"
        echo "------------------------------------------------------------------"
        echo "------------------------------------------------------------------"

else
	echo
	if [ $pisos -le `expr $len - 1` ]
	then
		for ((l=0;l<=pisos;l++))
		do
			beta=$beta${alfa:$l:1}
		done
		for ((a=pisos-1;a>=0;a--))
		do
			beta=$beta${beta:$a:1}
		done
		echo "$beta"
	else
		for ((m=0;m<gamma;m++))
	        do
        	        beta=$beta$alfa
     		done
        	for ((n=0;n<=resta;n++))
	       	do
	                beta=$beta${alfa:$n:1}
	        done
		for ((b=pisos-1;b>=0;b--))
		do
			beta=$beta${beta:$b:1}
		done
		echo "$beta"
	fi
	for ((i=1;i<$pisos1;i++))
        do
                if [ $i -lt $pisos ]
                then
                        for ((j=0;j<$pisos-i+1;j++))
                        do

                                echo -n ${beta:j:1}
                        done
                        for ((k=2*i-1;k>0;k--))
                        do
                                echo -n '°'
                        done
			for ((j=$pisos+i;j<=2*$pisos;j++))
                        do
                                echo -n ${beta:j:1}
                        done
                else
			for ((j=0;j<=i-$pisos;j++))
                        do
			       echo -n ${beta:j:1}
		        done
                        for ((k=2*($pisos1-i)-1;k>0;k--))
                        do
                                echo -n '°'
                        done
			for ((j=i-$pisos;j>=0;j--))
                        do
                                echo -n ${beta:j:1}
                        done
                fi
                echo
        done
	echo "$beta"
	echo
fi
