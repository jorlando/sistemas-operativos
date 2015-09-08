#!/bin/bash
for i in {1..10};
do
resul=$(expr $i \* $1)
echo "$i x $1 = $resul";
done

