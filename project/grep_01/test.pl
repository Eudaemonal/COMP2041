#!/usr/bin/perl -w


if($ARGV[0] eq '-v'){
	$op = 1;
	shift @ARGV;
}
else{
	$op = 0;
}
$pattern = shift @ARGV;

foreach $line (<>){
	if($op){
		print $line if(!($line =~/$pattern/));
	}
	else{
		print $line if($line =~/$pattern/);
	}
}
