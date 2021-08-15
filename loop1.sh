#!/bin/bash

#loop

braile1="⠋⠙⠹⠸⠼⠴⠦⠧⠇"
braile=$braile1$braile1$braile1
echo $len
loop () {
	a=0
	while [ $a -lt 3 ]; do
		sleep 4
		((a++))
	done
}

loading () {
	tput civis
	counter=0
	echo -n "cargando "
	loop &
	get=$!
	cont=0
	while kill -0 $get 2> /dev/null; do
		echo -n ${braile:counter:1}
		sleep 0.5
		((counter++))
                ((cont++))
		if [ $cont -eq 1 ]; then
			echo -ne "\b\b"
			echo -n "   ";
			echo -ne "\b\b"
			cont=0
		fi
	done
	echo -e "\rCompletado!   "
	tput cnorm
}

loading
