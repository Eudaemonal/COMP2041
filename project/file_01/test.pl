#!/usr/bin/perl -w

die "Useage: $0 <infile> <outfile>" if(@ARGV != 2);

$infile = shift @ARGV;
$outfile = shift @ARGV;


open $in, '<',$infile or die "Cannot open $infile: $!";
open $out,'>', $outfile or die "Cannot open $outfile: $!";

while($line = <$in>){
	print $out $line;
}

close $in;
close $out;
exit 0;

