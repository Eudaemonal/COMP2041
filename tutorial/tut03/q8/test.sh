#!/bin/sh

current_month=`date|cut -d' ' -f2`  # can also use options to date
while test "`date|cut -d' ' -f2`" = "$current_month"
do
    date
    sleep 3600 # one hour
done
