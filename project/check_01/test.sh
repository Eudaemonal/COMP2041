#!/bin/sh


cut -d' ' -f1 |sort|uniq -c|grep -v '.*1 '|sed 's/.* //'


