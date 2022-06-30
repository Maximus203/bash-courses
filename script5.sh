#!/bin/bash
id=`id -u`

if [ $id -eq 0 ]; then
	echo "Vous etes administrateur"
else
	echo "Vous etes utilisateur simple"
fi
