#!/bin/sh


url="http://www.unsw.edu.au"
content=$(wget $url -q -O -)
echo $content
