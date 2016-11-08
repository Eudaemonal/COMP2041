#!/bin/sh

find $@ -name "*.py"
for filename in $@
do
	echo $filename
done
