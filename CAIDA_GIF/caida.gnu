set title '--CAIDA LIBRE -- '
set term 'png'
unset border
set object  rectangle from -1000,-1000 to 1000,10000 fillcolor rgb '#606060 ' behind
set noxtics
set noytics
set xrange[0:3]
set yrange[-2:200]
unset key
unset size
set output 'imagen64.png'
plot '<echo 2 5.32055'  with points lw 5,'hola.dat' with lines, (2,4)
