#!/bin/bash

folder=`pwd`

function get_free(){
	$folder/get_ip.sh $1
}

while [ 1 > 0 ]
do
ip=`shuf -n 1 free_ip`

{ # add "#" to debug
get_free $ip
}&> /dev/null # add "#" to debug
TEST=$?

if [ $TEST -eq 0 ]; then
	echo $ip
	exit 0
fi

done	
