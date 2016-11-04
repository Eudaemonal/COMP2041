#!/bin/sh


SAVEIFS=$IFS
IFS=''

for file in `find . -name '*.mp3'`
do
	echo "$file"
done


IFS=$SAVEIFS
