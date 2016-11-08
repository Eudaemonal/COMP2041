#!/bin/sh



cut -d' ' -f1|sort|uniq -c|grep "^\s*[234567890] .*"|cut -c9-16
