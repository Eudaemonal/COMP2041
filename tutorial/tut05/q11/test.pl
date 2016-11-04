#!/usr/bin/perl -w


foreach $file (@ARGV){
	open F, $file or die "Cannot open file: $file";
	@lines = <F>;
	print reverse(@lines);

}
