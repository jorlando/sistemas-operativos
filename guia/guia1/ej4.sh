#!/bin/bash
if [ -z "$1" ]; then
	echo "en necesario enviar un parametro. Ej: ./ej4.sh 101"
else
	vari=$(expr $1 % 101)
#echo $vari
	if [ $vari -gt 0 ]; then
		echo "NO es divisible"
	else
		echo "SI es divisible"
	fi
fi
