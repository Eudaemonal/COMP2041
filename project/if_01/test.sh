#!/bin/sh


for((a=0;a<10;a++))
do
	if [[ $a -ge 3 && $a -le 6 ]]
	then
		echo $a
	else
		echo "out"
	fi
done
