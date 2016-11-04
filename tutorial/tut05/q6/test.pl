#!/usr/bin/perl -w


$n=10;
if(@ARGV && $ARGV[0]=~/-[0-9]+/){
	$n = shift @ARGV;
	$n =~s/-//;
}
foreach $file (@ARGV){
	print "==> $file <===\n";
	open F, $file;
	@lines = <F>;
	print @lines[0..$n-1];

}
