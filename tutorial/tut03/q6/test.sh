#!/bin/sh

while read line
do
	id=`echo $line|cut -d' ' -f1`
	name=`echo $line|cut -d' ' -f2-`
	out=`cat "Marks"|grep $id |cut -d' ' -f2`
	echo "$out $name"

done < "Students"
