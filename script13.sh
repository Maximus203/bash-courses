#!/bin/bash

PS3="Choisir un plat #"; select plat in "Hamburger a la viande" "Hamburger au poulet" "Hamburger royal" "Chawarma" "Quitter"
	do
		while [ $REPLY -ne 5 ] do
			case plat in 
				1) echo "1500 F";;
				2) echo "1500 F";;
				3) echo "2000 F";;
				4) echo "1000 F";;
				5) break;;
				*) echo "Erreur !!! Reprennez";;
			esac
		done
	done
