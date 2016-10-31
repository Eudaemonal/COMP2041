#!/usr/bin/perl -w


$max = 10;

if(@ARGV==1){
	$max = $ARGV[0];
	$max =~ s/-//;
}

@lines = <STDIN>;

print @lines[0..$max-1];
