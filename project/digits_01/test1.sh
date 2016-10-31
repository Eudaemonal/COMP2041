#!/bin/sh



for file in *
do
	echo "File exists: $file"
	while read line
	do
		echo $line
	done <"$file"
done 
