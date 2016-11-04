#!/usr/bin/perl -w


foreach $line (<>){
	@words = $line =~ /\w+/g;
	print @words;

}

