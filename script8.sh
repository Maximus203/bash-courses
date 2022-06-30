#!/bin/bash

if [ $1 -gt 0 -a $1 -lt 50 ] ; then
	echo "Vert"
elif [ $1 -gt 50 -a $1 -lt 75 ] ; then
	echo "Orange"
elif [ $1 -gt 50 -a $1 -lt 100 ] ; then
	echo "Rouge"
else
	echo "Erreur !"
fi
