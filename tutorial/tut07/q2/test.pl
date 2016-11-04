#!/usr/bin/perl -w



die "Useage: $0 <file1> <file2>\n" if(@ARGV != 2);
$file1 = shift @ARGV;
$file2 = shift @ARGV;

open F, $file1 or die "Cannot open $file1";
foreach my $line (<F>){
	my @words = $line =~/(\w+)/g;
	foreach $word (@words){
		$count{$word} = 1;
	}
}

open F, $file2 or die "Cannot open $file2";
foreach my $line (<F>){
	my @words = $line =~/(\w+)/g;
	foreach $word (@words){
		$count{$word} = 0;
	}
}

@words = keys %count;
foreach $word (@words){
	print "$word\n" if ($count{$word}==1);
}


