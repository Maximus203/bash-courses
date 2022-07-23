#!/bin/bash

PS3="Faire votre choix> "; select menu in "Affiche l'adresse IP de la machine" "L'utilisation de la RAM" "L'utilisation de la partition de la racine" Quitter
	do
		case $REPLY in 
			1) hostname -I;;
			2) free -h | tail -2 | head -1 | fmt -u | cut -d " " -f3;;
			3) df --output=pcent / |tail -1;;
			4) break;;
			*) echo "Erreur !!! Reprennez";;
		esac
done