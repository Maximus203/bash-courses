#!/bin/bash
read -p "Donner moi un nombre: " n

for i in $(seq 12);
do
	echo "$n * $i = $(($n*$i))"
done
