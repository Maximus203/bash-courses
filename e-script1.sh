#!/bin/bash

if [ $1 -ge 0 -a $1 -le 75 ] ; then
	echo "Vert"
elif [ $1 -gt 75 -a $1 -le 100 ] ; then
	echo "Rouge"
else
	echo "Erreur !"
fi
