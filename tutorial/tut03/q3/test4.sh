#!/bin/sh


cat $1 | cut -d\: -f1,2|tr ':' '\t'
