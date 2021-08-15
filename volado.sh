#!/bin/bash

#Programa que simula lanzar al aire dos monedas y guarda un registro de lo que salió cada vez.

numero=0
NC=0
NN=0
NR=0
clear
echo "==========================================="
echo "Este programa simula tirar una moneda"
echo " El CERO representa el  AGUILA"
echo " El UNO representa el SOL"
echo  " Cuantos tiros deseas realizar"
read TOTAL
echo  " "

echo "" > registro.txt

while [ $numero -lt $TOTAL ]
  do
      NU=$(($RANDOM%2))
      numero=`expr $numero  + 1 `
      NR=`expr $NR  + 1 `
      if [ $NR -lt 6 ] 
       then 
          echo  -n $NU "	">>registro.txt
       else
        echo " ">>registro.txt
          echo  -n  $NU "	" >>registro.txt
          NR=1
       fi

      ####echo  "$NU * 0.10 " |bc -l
      if [ $NU -eq 0 ] 
      then 
         NC=`expr $NC + 1 `
      elif [ $NU -eq 1 ]
       then
         NN=`expr $NN + 1 `
      fi
 done
 echo -e " "
 echo -e "Se tiraron un total de $TOTAL"
 echo -e "Cayeron $NC vece(s) Aguila y $NN vece(s) Sol"
echo "==========================================="
