#!/usr/bin/perl -w


foreach $filename ( `find $@ -name '*.py'`){
	print $filename;
}
