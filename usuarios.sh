#!/bin/bash

#programa que lista los nombres de los usuarios conectados en la clase.

echo " Los usuarios conectados son:"
contador=0
for usu in `who | cut -d " " -f1| sort |uniq `
do
   contador=`expr $contador + 1 `
   tn=`grep $usu /etc/passwd | cut -d: -f5 | tr "_" " " | wc -w`
   #numero=`echo $tn | wc -w`
   nombre=`grep $usu /etc/passwd |cut -d: -f5 | tr " " "_"  | cut -d"_" -f3`
   echo " $contador.-  $usu $nombre $tn "
done
