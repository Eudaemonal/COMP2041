#!/usr/bin/perl -w



$filename=$ARGV[0];
$find = $ARGV[1];

open F, $filename;
foreach $line (<F>){
	print $line if(grep(/$find/, $line));
}
