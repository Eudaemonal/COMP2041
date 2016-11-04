#!/usr/bin/perl -w

@lines = <>;
foreach $line (@lines){
	chomp $line;
	$line = lc $line;
	
	my @words = split /\W/, $line;
	#my $prev = "";
	foreach my $word (@words){
		$count{$word}++;
	}
}


foreach $line (@lines){
	chomp $line;
	$line = lc $line;
	
	my @words = split /\W/, $line;
	my $prev = "";
	foreach my $word (@words){
		$count2{$prev}{$word}++ if($prev);
		#print "$prev $word\n" if($prev ne "");
		$prev = $word;
	}
}


foreach $word1 (sort keys %count){
	my $w = "";
	my $c = 0;
	foreach $word2 (sort keys %count){
		my $b = $count2{$word1}{$word2};
		if(defined $b && $b > $c){
			$c = $b;
			$w = $word2;
		}
	}

	print "$word1 ($count{$word1}) $w ($c)\n";
}









