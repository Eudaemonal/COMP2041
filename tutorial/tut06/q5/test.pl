#!/usr/bin/perl -w


die "Useage: <n> <m> <file>" if @ARGV !=3;

open F, "$ARGV[2]" or die "Cannot open file: $ARGV[2]";
foreach $line (<F>){
	chomp $line;
	@chars = split //, $line;
	print @chars[$ARGV[0]-1..$ARGV[1]-1], "\n";
}




