#!/usr/bin/perl -w


# ./test.pl http://www.cse.unsw.edu.au

foreach $url (@ARGV){
	open F, "wget -q -O- $url|" or die;
	my %count = ();
	while ($line = <F>){
		my @tags = $line =~ /<\s*(\w+)/g;
		foreach my $tag (@tags){
			$count{$tag}++;
		}
		
	}
	print "==== $url =====\n";
	foreach $tag (sort keys %count){
		print "$tag $count{$tag}\n";
	}

}

