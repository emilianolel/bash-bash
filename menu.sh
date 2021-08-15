#!/bin/sh
#Programa MENU
res=0
while [ $res -ne 4 ]
do
#clear
echo "----------------------------------------------------"
echo "----------------------------------------------------"
echo "1) Listar archivos"
echo "2) Busca a un usuario conectado"
echo "3) Copiar archivos"
echo "4) Salir "
echo "Teclea la opcion deseada"
echo "----------------------------------------------------"
read res
  case $res in
       1) #clear
          echo "Los archivos son:"
          ls
           ;;
      2) echo "Dame la clave del usuario "
         read login
          w|grep $login
          ;;
      3)  echo "Dame el nombre archivo origen"
          read archivo_origen
          echo "Dame el nombre del archivo destino"
          read archivo_des
            if  [ -a $archivo_origen ]
            then
                cp $archivo_origen $archivo_des
            else
                echo "El archivo origen no existe"
            fi
          ;;
      4) echo "El programa ha terminado"
         exit
         ;;
  esac
done
