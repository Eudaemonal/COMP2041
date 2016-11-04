#!/usr/bin/perl -w


$pattern = shift @ARGV;

foreach $line (<>){
	print $line if(grep(/$pattern/, $line));
}
