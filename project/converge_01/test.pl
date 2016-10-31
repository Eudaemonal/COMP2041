#!/usr/bin/perl -w


foreach $line (<>){
	chomp($line);
	my @arr = split ' ', $line;
	my @diff = ();
	$converge = 1;

	my $prev = shift @arr;
	foreach my $elem (@arr){
		if(!($elem < $prev)){
			$converge = 0;
		}
		my $d = $prev - $elem;
		$prev = $elem;
		push @diff, $d;

	}
	#print "diff: @diff\n";
	$prev = shift @diff;
	foreach my $elem (@diff){
		if(!($elem < $prev)){
			$converge = 0;
		}
		$prev = $elem;
	}
	print "$line - $converge\n";

}
