#!/bin/bash

if [ -f $1 ]; then echo "$1 est un fichier "; elif [ -d $1 ]; then echo "$1 est un dossier"; else echo"Franchement je sais pas mon gars"; fi  
