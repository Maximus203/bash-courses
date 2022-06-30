#!/bin/bash

PS3="Choisir un plat #"; select plat in Hamburger Chawarma Poulet Michoui Pizza Glace Quitter
	do
		case $REPLY in 
			1) echo "1500 F";
			echo "Vous avez choisi $plat"
			;;
			2) echo "1500 F";;
			3) echo "3000 F";;
			4) echo "3500 F";;
			5) echo "5000 F";;
			6) echo "1500 F";;
			7) break;;
			*) echo "Erreur !!! Reprennez";;
		esac
done
