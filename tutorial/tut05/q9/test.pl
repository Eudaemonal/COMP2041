#!/usr/bin/perl -w


if(@ARGV && $ARGV[0] eq '-n'){
	$flag = 1;
	shift @ARGV;
}
$idx = 1;
foreach $line (<>){
	printf "%6d	", $idx++ if($flag);
	print $line;
}
