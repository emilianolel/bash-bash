#!/bin/bash

#Programa que muestra los logins del servidor

clear
num=0
for ele in `cat /etc/passwd | tr -s " " "_"`
do
  num=`expr $num + 1 `
  login=`echo $ele |cut -d: -f1`
  echo "$num .- $login"
done

