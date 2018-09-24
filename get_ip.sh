#!/bin/bash

folder=`pwd`
echo $folder
file=$folder/free_ip
networks=$folder/networks
date=`date -r $file`

if [ ! -f $file ];then
nmap -v -sn -iL $networks -oG - | awk '/Down$/{print $2}' > $file
fi

if test `find $file -mmin +5`
then
	echo "New scan started"
	nmap -v -sn -iL $networks -oG - | awk '/Down$/{print $2}' > $file
else
	echo "Last scan: $date"
fi

ip=`cat $file | grep -w $1`

if [ -z "$ip" ];then
echo "IP $1 is in use:"
resolveip -s $1
exit 2
fi

free=`resolveip -s $ip`

if [ -z "$free" ];then
	echo "IP is free"
	exit 0
else
	echo "IP is free, but has DNS: $free"
	echo "skipping IP"
	exit 1
fi
