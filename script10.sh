#!/bin/bash
if [ $( df -h --output=pcent / | tail -1 | sed 's/%//') -lt 50 ]; then
	echo "Vert"
elif [ $( df -h --output=pcent / | tail -1 | sed 's/%//') -gt 50 && $( df -h --output=pcent / | tail -1 | sed 's/%//') -lt 75 ]; then
	echo "Orange"
else 
	echo "Rouge"
fi
