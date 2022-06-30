#!/bin/bash

sendmail() { echo $1 | mail -s "Disk usage" root ;}

if [ $( df -h --output=pcent / | tail -1 | sed 's/%//') -lt 50 ]; then
	sendmail "Vert"
elif [ $( df -h --output=pcent / | tail -1 | sed 's/%//') -gt 50 && $( df -h --output=pcent / | tail -1 | sed 's/%//') -lt 75 ]; then
	sendmail "Orange"
else 
	sendmail "Rouge"
fi
