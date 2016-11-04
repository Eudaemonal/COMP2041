#!/usr/bin/perl -w


foreach $line (<>){
	my @words = $line =~ /\w+/g;
	foreach $word(@words){
		$word = lc($word);
		$count{$word}++;
	}
}
@words = keys %count;
@sort_words = sort {$count{$a} <=> $count{$b}} @words;

foreach $word (@sort_words){
	print "$count{$word} $word\n";
}

