#!/usr/bin/perl -w


foreach $line (<>){
	chomp $line;
	@words = split //,$line;
	foreach $word (@words){
		if($word =~/[aeiou]/){
			$word = uc($word);
		}
		elsif($word =~/[AEIOU]/){
			$word =~ lc($word);
		}
	}
	$line = join '', @words;
	print "$line\n";

}
