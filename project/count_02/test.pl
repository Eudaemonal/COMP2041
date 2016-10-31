#!/usr/bin/perl -w


foreach $line (<>){
	@chars = $line =~ /[0-9a-zA-z]/g;
	foreach $char (@chars){
		$count{$char}++;
	}
}

foreach $letter (sort keys %count){
	print "$letter $count{$letter}\n";
}

