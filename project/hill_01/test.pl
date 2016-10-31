#!/usr/bin/perl -w


foreach $line (<>){
	chomp($line);
	my @arr = split ' ',$line;

	my $hill = 0;
	my $prev = 0;
	my $climb = 1;
	foreach my $elem (@arr){
		if($prev < $elem && $climb==1){
			$max = $elem;

		}elsif($prev > $elem && $elem < $max){
			$climb = 0;
			if($elem == $arr[$#arr]){
				$hill = 1;
			}
		}
		else{
			last;
		}


		$prev = $elem
	}


	print "$line - $hill\n";

}
