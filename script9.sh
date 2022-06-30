#!/bin/bash

if [ $# -eq 0 ] ; then
	read - p "Entrer un nombre" n
else
	n=$1

if [ $n -ge 0 -a $n -lt 50 ] ; then
	echo "Vert"
elif [ $n -ge 50 -a $n -lt 75 ] ; then
	echo "Orange"
elif [ $n -ge 50 -a $n -le 100 ] ; then
	echo "Rouge"
else
	echo "Erreur !"
fi
