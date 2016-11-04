#!/usr/bin/python

import sys, urllib

url = "http://www.unsw.edu.au"
response = urllib.urlopen(url)
webContent=response.read()
for line in webContent.split('\n'):
	print line

