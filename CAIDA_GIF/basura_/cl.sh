echo "Dame la posición inicial"
read x0

echo "Dame el incremento de tiempo"
read dt

#v=`echo "scale=0; $x0/$dt" | bc -l`

t=`echo "scale=0; sqrt(2*$x0/9.81)" | bc -l`

v=`echo "scale=0; $t/$dt" | bc -l`


for ((i=0;i<=v;i++))
do
	pos=`echo "scale=5;$x0-9.81*$i*$dt*$i*$dt/2" | bc -l`
        #echo $pos
	echo "2 $pos"  >> caidalibre.dat
done

