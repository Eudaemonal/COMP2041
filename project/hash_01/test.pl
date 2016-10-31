#!/usr/bin/perl -w


%colours = ("John"=>"blue", "Anne"=>"red", "Andrew"=>"green");

sub printHash {
	my %tab = @_;

	my $n = 0;
	foreach $k (sort keys %tab) {
		print "[$k] => $tab{$k}";
		$n++;
	}
	return $n;
}

printHash(%colours);
