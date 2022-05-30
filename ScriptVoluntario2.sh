#!/bin/bash
# Autor: MiguelGR
# Estructura bucle 
opcion=1;
while [ $opcion -ne 6 ]
do
#Muestro el menu
	echo "Script que puede realizar 5 acciones para con nuestro sistema "
	echo "1.contar el número de usuarios del Sistema"
	echo "2.mostrar campos 1,3,4,5 de los usuarios cuyo nombre empieza por p"
	echo "3.dado un año me muestre el calendario completo de dicho año"
	echo "4.contar archivos y directorios de una carpeta actual"
	echo "5.mostrar usuarios activos "
	echo "6.salir"
	read -p "Introduce opcion 1..6: " opcion
	
case $opcion in 
	1)clear
	 echo -e "El numero de usuarios es: \n \n" "`awk -F':' '{ print $1}' /etc/passwd | wc -l`";;
	2)clear
	 echo -e " Campos 1-5 de los usuarios con nombre que empieza por p \n \n""`awk '$1 ~ /^[p]/ { print $1 $2 $3 $4 $5 }' /etc/passwd`";;
	 3) clear
	 echo -e " Dado un año me muestre el calendario completo de dicho año \n \n";;
	 4) clear
	 echo -e "El numero de ficheros y directorios de la carpeta actual es: \n \n""`find . | wc -l`";;
	 5) clear
	 fecha=`date`
	 echo -e "Los usuarios que se han logeado actualmente a fecha:\n$fecha: \n \n ""`users`";;
	6) echo "Saliendo que es gerundio";;
	*) echo "opcion no valida";;
esac

echo "             ";

done
