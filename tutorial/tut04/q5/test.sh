#!/bin/sh

egrep '^\s+[a-z0-9.]+$'|sed 's/ //g'
