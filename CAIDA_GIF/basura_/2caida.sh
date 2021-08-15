graficar(){
echo "set title '--CAIDA LIBRE -- '" >caida.gnu
echo "set term 'png'">>caida.gnu
echo "unset border">>caida.gnu
echo "set object  rectangle from -1000,-1000 to 1000,10000 fillcolor rgb '#606060 ' behind">>caida.gnu
echo "set noxtics">>caida.gnu
echo "set noytics">>caida.gnu
echo "set xrange[0:3]">>caida.gnu
echo "set yrange[-2:101]">>caida.gnu
echo "unset key">>caida.gnu
echo "unset size">>caida.gnu
echo "set output 'imagen$n.png'">>caida.gnu
echo "plot '<echo "$a $b"'  with points lw 5,'caida.dat' with lines, (2,4)">>caida.gnu
 gnuplot caida.gnu
}

con(){

for i in  `seq 1 $n`
do
  fig=imagen$i.png" "$fig
done
echo $fig
convert -delay 40 $fig  -loop 0   caida.gif
#rm imagen*
}

n=0
  echo -n "Generando archivo GIF "
for i in `tr -s " " ":" < caida.dat `
do
  a=`echo $i|cut -d: -f1`
  b=`echo $i|cut -d: -f2`
  n=`expr $n + 1 `

  echo -n " - "
  graficar
done
  echo ""
  echo  "Se muestra el archivo generado "
  con
  gthumb caida.gif 2> /dev/null
  
