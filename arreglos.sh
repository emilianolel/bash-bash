#!/bin/bash

#Así funcionan los arreglos en bash.

#Recordatorio:
#	declare -i num		# Declara num como ENTERO
#	declare -r PI=3.14	# Declara PI como constante
#	declare -a lista	# Declara lista como un array
#	declare -A matriz	# Declara matriz como un array bidimensional
#	declare -f verMenu	# Declara verMenu como una función
#	declare -x var		# Declara que la variable var se utilizará desde fuera del script


arreglo=(uno dos tres cuatro,cinco   [5]=CINCO)

echo "---------------------------------------------"
echo "Tamaño del Arreglo ${#arreglo[*]}"

echo "Contenido del Arreglo "
for item in ${arreglo[*]}
do
    echo "$item"
done
echo "---------------------------------------------"
echo "Indice del Arreglo:"
for indice in ${!arreglo[*]}
do
    echo "$indice"
done

echo "---------------------------------------------"
echo "Indice y contenido :"
for indice in ${!arreglo[*]}
do
    echo " $indice ${arreglo[$indice]} "
done
echo "---------------------------------------------"

n=2
var=arreglo$n
echo $var
declare -a arreglo$n[0]=1
ayuda=`echo "1  + 1000 " | bc -l  `
echo "ESTO AYUDA:$ayuda"
declare  arreglo$n[$n]=$ayuda
echo ${arreglo2[2]}
