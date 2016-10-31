#!/bin/sh



for file in test/*
do
	line=`wc -l<$file`
	#echo $line
	filename=`echo $file|cut -c6`

	if test $line -lt 50
	then
		smallfile="$smallfile $filename"
	else
		largefile="$largefile $filename"
	fi

done 
echo "small file: $smallfile"
echo "large file: $largefile"



