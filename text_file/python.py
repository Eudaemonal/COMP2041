#!/usr/bin/python

filename = 'data.txt'
content = 'python test data'

fd = open(filename, "wb")
fd.write(content)

fd.close()


