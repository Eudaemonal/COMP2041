#!/usr/bin/perl -w


foreach $line (<STDIN>){
	my @words = $line =~/[a-zA-Z]+/g;
	foreach my $word (@words){
		$word = lc($word);
		$hash{$word}++;
	}
}

@arr = keys %hash;
@sorted_arr = sort {$hash{$a} <=> $hash{$b}} @arr;

foreach $word (@sorted_arr){
	print "$hash{$word} $word\n";
}
