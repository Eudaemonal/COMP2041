#!/bin/sh



while read line
do
	echo $line|sed 's/[0-4]/</g;s/[6-9]/>/g'

done <"in"
