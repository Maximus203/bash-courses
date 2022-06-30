#!/bin/bash

sendmail() { echo $1 | mail -s "`$2`" root ;}

tar -zcf ~/Desktop/ESTM.tar.gz ~/Desktop/ESTM > /dev/null

ping -c4 192.168.4.181 > /dev/null

if [ $? -eq 0 ]; then

	objet="Sauvegarde journalier"
	
	scp ~/Desktop/ESTM.* bob@192.168.4.181:~/sauvegarde
	
	if [ $? -eq 0 ]; then
		sendmail "Succes de la sauvegarde du `date +%d-%m-%Y`" $objet
	else
		sendmail "Echec de la sauvegarde du `date +%d-%m-%Y`" $objet
	fi
else
	objet="Serveur injoignable"

	sendmail "Bonjour cher admin, j'espere que passer une bonne journee. Le serveur de sauvegarde est injoignable" $objet
fi

