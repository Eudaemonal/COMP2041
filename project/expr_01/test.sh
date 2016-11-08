#!/bin/sh

a[1]=23
a[2]=37
a[3]=`expr ${a[1]} + ${a[2]}`
a[4]=80


echo ${a[3]}
echo ${a[*]}
echo ${#a[@]}
