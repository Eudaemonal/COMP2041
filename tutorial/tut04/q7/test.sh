#!/bin/sh


mlalias COMP2041-list|
grep -v :|
sed 's/^ *//'|
while read cseusername
do
    acc $cseusername|
    tr -s ', ' '\n' |
    grep '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9]_Student'|
    cut -c1-8
done|
sort|
uniq -c|sort -rn

