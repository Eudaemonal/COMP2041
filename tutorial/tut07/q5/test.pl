#!/usr/bin/perl -w


foreach $line (<>){
	chomp $line;
	$line = lc $line;
	
	my @words = split /\W/, $line;
	#my $prev = "";
	foreach my $word (@words){
		$count{$prev}{$word}++ if($prev);
		#print "$prev $word\n" if($prev ne "");
		$prev = $word;
	}
}


foreach $word1 (sort keys %count){
	my $c2 = 0;
	my $w2 = "";
	my $total = 0;
	#print "$word1 ";
	foreach $word2 (sort keys %{$count{$word1}}){
		my $b = $count{$word1}{$word2};
		$total += $b;
		if($b > $c2){
			$c2 = $b;
			$w2 = $word2;
		}
	}
	print "$word1 ($total) $w2 ($c2)\n";
}



