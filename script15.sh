#!/bin/bash
echo Test | systemd-cat -p info
while :
do
	echo Ok
	sleep 300
done
