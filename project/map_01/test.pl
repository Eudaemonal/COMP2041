#!/usr/bin/perl -w


foreach $line (<>){
	chomp($line);
	@chars = split '', $line;
	foreach my $char (@chars){
		if($char=~/[aeiou]/){
			$char=uc($char);
		}
		elsif($char=~/[AEIOU]/){
			$char=lc($char);
		}
	}
	$line = join '',@chars;
	print "$line\n";
}
