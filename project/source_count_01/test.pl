#!/usr/bin/perl -w


foreach $file (glob "*.c"){
	print "$file ";
	open F, $file or die "Cannot open file: $0";
	@lines = <F>;
	$num = $#lines+1;
	print "Line: $num\n";

}
