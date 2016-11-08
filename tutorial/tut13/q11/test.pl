#!/usr/bin/perl -w


foreach $line (<>){
	chomp $line;
	@m = split / /,$line;
	@m = reverse(@m);
	$line = join ' ',@m;
	print "$line\n";

}
