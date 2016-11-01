#!/bin/sh

: '
while read line
do
 	echo $line
done
'


# 1. The script use only standardin
# 2. There is no cat options
# 3. space at the start of the line is removed, multiple space in line is compressed to single one(Change IFS)SAVEIFS=$IFS




IFS=""

for f in "$@"
do
	if [ ! -r "$f"]
	then
		echo "No Such file: $f"
	else

		while read line
		do
		 	echo $line
		done <$f
	fi

done

IFS=$SAVEIFS
