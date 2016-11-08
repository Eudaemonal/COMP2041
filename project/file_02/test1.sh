#!/bin/sh


for file in `find $@ -name "*.py" -type f`
do
	echo $file
done
