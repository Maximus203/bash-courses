#!/bin/bash

sendmail(){ echo $1 | mail -s "Etat d'utilisation du disque" root ;}

etat=$(df --output=pcent / |tail -1 |sed s/%//)

if [ $etat -le 75 ] ; then
	sendmail "Vert"
else
	sendmail "Rouge"
fi


# Pour lire le mail: sudo mail -p