#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Pas d'arguement"
else
	echo "Le nom de mon script est: $0"
	echo "Vous avez passe $# parametres"
	echo "Voici la liste des parametres $*"
	echo "Voici le premier parametre $1"
	echo "Voici le deuxieme parametre $2"
fi
