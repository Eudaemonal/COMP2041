#!/bin/sh


directory=$1


if test -d $directory
then 
	echo "Delete $directory?"

	read flag
	if test "$flag" == "yes"
	then
		echo "Deleting"
		rm -rf $directory
	fi

else
	echo "Not directory"

fi

