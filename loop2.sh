braile="⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏"
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
	while kill -0 $get 2> /dev/null; do
		echo -en "\033[01;38;5;198m."
		sleep 0.5
		((counter++))
		if [ $counter -eq 3 ]; then
			echo -ne "\b\b\b"
			echo -n "   ";
			echo -ne "\b\b\b"
			counter=0
		fi
	done
	echo -e "\rCompletado!   "
	tput cnorm
}

loading
