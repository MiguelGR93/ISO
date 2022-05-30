#!/bin/bash
# Autor: MiguelGR
# Estructura bucle 
numero=1;
pares=0;
impares=0;
while [ $numero -ne 0 ]
do

read -p "Introduzca un numero, se sumaran pares e impares independientemente: " numero

if [ $((numero%2)) -eq 0 ]
then
	echo " el numero es par, se sumara con los otros pares";
	pares=$(($numero+$pares));
	
else 
	echo " el numero es impar, se sumara con los otros pares";
	impares=$(($numero+$impares));
	
fi

done

echo "La suma de los impares es: " $impares "La suma de los pares es: " $pares;
