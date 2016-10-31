#!/usr/bin/perl -w


foreach $line (<>){
	chomp($line);
	if($line =~/(\d+) ([a-z ]+)/){
		my $count = $1;
		my $spice = $2;
		
		$hash{$spice}+= $count;
	}

}

foreach $name (keys %hash){
	print "$hash{$name} - $name\n";

}
