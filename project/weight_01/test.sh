#!/bin/sh


while read line
do
	./test.pl $line

done < 'in'
