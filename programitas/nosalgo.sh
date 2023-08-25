#!/bin/bash
#### Programa que termina cuando digas SI
echo "#############################################"
echo "Cuando me digas que SI termino"
echo " Que me dices? "
read di

while     [ $di != "SI" ]  
     do
	echo "Cuando me digas que SI termino"
	echo "Que me dices?"
	read di
     done


echo "========================================="
echo "ADIOS"
echo "========================================="
