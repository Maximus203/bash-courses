#!/bin/bash
if [ $# -eq 0 ]; then
	read -p "Donner moi un nombre: " n
else
	n=$1
fi

for i in $(seq 12);
do
	echo "$n * $i = $(($n*$i))"
done
