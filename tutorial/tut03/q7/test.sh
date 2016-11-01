#!/bin/sh


while read id mark
do
	num=`echo $mark|cut -d' ' -f1`
	
	if ! [[ $num =~ '[0-9]+' ]]
	then
		echo "$id ?? ($num)"
	elif test $num -lt 0
	then
		echo "$id ?? ($num)"		
	elif test $num -lt 50
	then
		echo "$id FL"		
	elif test $num -lt 65
	then
		echo "$id PS"	
	elif test $num -lt 75
	then
		echo "$id CR"	
	elif test $num -lt 85
	then
		echo "$id DN"	
	elif test $num -le 100
	then
		echo "$id HD"
	else
		echo "$id ?? ($num)"
	fi
done
