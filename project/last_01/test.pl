#!/usr/bin/perl -w


foreach $a (1..10){
	if($a == 8){
		last;
	}
	if($a==4){
		next;
	}
	print "$a\n";

}
