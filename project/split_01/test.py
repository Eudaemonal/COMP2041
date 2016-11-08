#!/usr/bin/python
# Created by Eudaemon, All Rights Reserved.

import sys,re

for line in sys.stdin:
	line.rstrip('\n')
	
	arr=[]
	for char in line:
		if re.match('[aeiou]',char):	
			char = char.upper()
		elif re.match('[AEIOU]',char):
			char = char.lower()
		arr.append(char)
	line = ''.join(arr)
	print line,
