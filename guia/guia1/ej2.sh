#!/bin/bash
donde=$1
otro=$(echo $1 | sed s-/-_-g)
echo $otro
echo "estoy en $donde"
fecha=$(date +"%Y%m%d-$otro")
tar -cf $fecha.tar $1
gzip $fecha.tar
