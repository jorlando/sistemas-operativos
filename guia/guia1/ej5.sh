#!/bin/bash
if [ -d "$1" ]; then
	donde=$1
	otro=$(echo $1 | sed s-/-_-g)
	echo $otro
	echo "estoy en $donde"
	fecha=$(date +"%Y%m%d-$otro")
	tar -cf $fecha.tar $1
	gzip $fecha.tar
	if [ -z "$fecha.lst" ] ; then
		#touch $fecha.lst
		#for i in $(tar -tf $fecha.tar.gz);
		#do
		#	$fecha.lst << "$i"
		#done
		echo "entre"
	else
		echo "El archivo ya existia"
	fi
else
	echo "no existe el directorio"
fi
