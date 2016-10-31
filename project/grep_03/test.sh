#!/bin/sh





for file in tiny_music/*/*.mp3
do
	#echo $file

	name=`echo $file|cut -d\/ -f3`
	echo $name
	num=`echo $name| sed 's/\(.*\) - \(.*\) - \(.*\)/\1/'`
	artist=`echo $name| sed 's/\(.*\) - \(.*\) - \(.*\)/\2/'`
	album=`echo $name| sed 's/\(.*\) - \(.*\) - \(.*\)/\3/'`
	echo $num
	echo $artist
	echo $album
done 
