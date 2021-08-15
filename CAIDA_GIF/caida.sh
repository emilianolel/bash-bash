#!/bin/bash

graficar(){
echo "set title '--CAIDA LIBRE -- '" >caida.gnu
echo "set term 'png'">>caida.gnu
echo "unset border">>caida.gnu
echo "set object  rectangle from -1000,-1000 to 1000,10000 fillcolor rgb '#606060 ' behind">>caida.gnu
echo "set noxtics">>caida.gnu
echo "set noytics">>caida.gnu
echo "set xrange[0:3]">>caida.gnu
echo "set yrange[-2:$x0]">>caida.gnu
echo "unset key">>caida.gnu
echo "unset size">>caida.gnu
echo "set output 'imagen$n.png'">>caida.gnu
echo "plot '<echo "$a $b"'  with points lw 5,'$archivo' with lines, (2,4)">>caida.gnu
 gnuplot caida.gnu
}

con(){

for ((i=$n;i>0;i--))
do
  fig=imagen$i.png" "$fig
done
#echo $fig
convert -delay $dt $fig  -loop 0   caida.gif
rm imagen*
}

echo
echo

echo "          ESTE PROGRAMA GENERA UNA \"SIMILACIÓN\" DE CAIDA LIBRE"
echo
echo
echo "Dame la posición inicial"
read x0
if (( $x0 <= 0 ))
then
        echo "Ingresa un número mayor estricto que cero"
        read x0
        while (( $x0 <= 0 ))
        do
                echo "Ingresa un número mayor ESTRICTO que cero"
                read x0
        done
fi
echo
echo "Dame el incremento de tiempo"
read dt
#if (( $dt <= 0 ))
#then
#        echo "Ingresa un número mayor estricto que cero"
#        read dt
#        while (( $dt <= 0 ))
#        do
#                echo "Ingresa un número mayor ESTRICTO que cero"
#                read dt
#        done
#fi
echo
echo "Ingresa el archivo .dat en el que quieres guardar los datos de la posición de la partícula"
read archivo
echo
if [ -f "$archivo" ]
then
    echo "¿Quieres sobreescribir el archivo? (si/no)"
    read res
    if [ $res == "si" ]
    then
        rm $archivo
    elif [ $res == "no" ]
    then
        echo "Ingresa un nuevo nombre pata el archivo"
        read archivo1
        while [ $archivo1 == $archivo ]
        do
            echo "Ingresa nuevo nombre de archivo"
            read archivo1
        done
        archivo=$archivo1
    fi
fi
clear

n=0
t=`echo "scale=5; sqrt(2*$x0/9.81)" | bc -l`
v=`echo "scale=0; $t/$dt" | bc -l`

for ((i=0;i<=v;i++))
do
        pos=`echo "scale=5;$x0-9.81*$i*$dt*$i*$dt/2" | bc -l`
        #echo $pos
        echo "2 $pos"  >> $archivo
done

len=`wc -l $archivo`
frec=`echo "scale=1; $t/$len" | bc -l`

echo -n "Generando archivo GIF "
for i in `tr -s " " ":" < $archivo `
do
  a=`echo $i|cut -d: -f1`
  b=`echo $i|cut -d: -f2`
  n=`expr $n + 1 `

  echo -n " - "
  graficar
done
echo ""
#echo  "Se muestra el archivo generado "
con
gthumb caida.gif 2> /dev/null

