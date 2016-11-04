#!/usr/bin/perl -w


# ./test.pl http://www.unsw.edu.au

foreach $url (@ARGV){
	open F, "wget -q -O- $url|" or die;
	while($line = <F>){
		@numbers = split /[^\d\-]/, $line;
		foreach $number (@numbers){
			$number =~ s/\D//g;
			print "$number\n" if length $number >= 8 && length $number <= 15;
		}

	}

}


