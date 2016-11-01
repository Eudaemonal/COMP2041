#!/bin/sh


cat $1 |rev|sort -t' ' -k3.2


# No we cannot
#
# The sorting value should be in the same field
