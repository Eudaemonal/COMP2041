#!/usr/bin/perl -w


sub printHash {
	my (%hash) = @_;
	my @arr = keys %hash;
	foreach $elem (@arr){
		print "[$elem] => $hash{$elem}\n";
	}

}


%colours = ("John"=>"blue", "Anne"=>"red", "Andrew"=>"green");
printHash(%colours);



