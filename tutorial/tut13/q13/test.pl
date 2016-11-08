#!/usr/bin/perl -w


foreach $line (<>){
	@words = split //, $line;
	foreach $word (@words){
		if($word=~/[a-zA-Z0-8]/){
		$count{$word}++;
		}
	}
}
@words = keys %count;
foreach $word (sort @words){
	print "'$word' occurred $count{$word} times\n";
}


