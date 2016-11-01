#!/bin/sh

cat $1| egrep '/bin/bash'|cut -d\: -f1
