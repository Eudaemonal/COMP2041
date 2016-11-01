#!/bin/sh


cat $1|tr -cs 'a-zA-Z0-9' '\n' | tr 'a-z' 'A-Z'|sort|uniq -c
