#!/bin/bash

message() {	echo "Le serveur $2 est $1, `date +%d/%m/%Y" "%H:%M`" >> /opt/etat.txt;}

address=26.58.206.228

# Le compteur de tentative
i=0

while [ $i -le 2 ] # ou -lt 3
do
	ping -c1 $address >> /dev/null

	if [ $? -eq 0 ]
	then
		message UP $address 
		break
	else
		i=$((i=i+1))
		sleep 2
		echo "$i er tentative"
		if [ $i -eq 2 ]
		then
			message DOWN $address
		fi
	fi
done

