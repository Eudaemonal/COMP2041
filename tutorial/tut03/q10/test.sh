#!/bin/sh

LIMIT=100
for f in *
do
	bytes=`wc -c<$f`
	if test $bytes -ge $LIMIT
	then
		echo "File: $f has $bytes bytes"

	fi

done


