#!/bin/bash

folder=`pwd`

# add get_ip.sh as function
function get_free(){
	$folder/get_ip.sh $1
}

while [ 1 > 0 ]
do
ip=`shuf -n 1 free_ip` #outputs random IP from free_ip list

{ # add "#" to debug
get_free $ip #check IP again for PTR
}&> /dev/null # add "#" to debug
TEST=$?

# minimal output
if [ $TEST -eq 0 ]; then
	echo $ip
	exit 0
fi

done	
