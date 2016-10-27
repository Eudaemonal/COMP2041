#!/usr/bin/perl -w


$filename = "data";

open F, $filename or die "Cannot open file: $filename";

foreach $line (<F>){
	chomp($line);
	print "$line\n";

}


