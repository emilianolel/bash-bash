#!/bin7bash

#Programa que muestra una "pirámide" de a's de 10 piso de a's de 10 pisoss

for ((i=0;i<9;i++)); do
	for ((j=9-i;j>0;j--)); do
		echo -n " "
	done	
	for ((k=i+1;k>0;k--)); do
		echo -n "a"
	done
	echo -ne "\n"
done
