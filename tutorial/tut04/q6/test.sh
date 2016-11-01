#!/bin/sh

cat $1|tr ', ' '\n'|grep '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9]_Student'|cut -c1-8
