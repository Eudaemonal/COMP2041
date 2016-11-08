#!/usr/bin/perl -w


die "Useage:..." if(@ARGV != 1);
$find = shift @ARGV;

foreach $line (<>){
	chomp $line;
	my ($id, $course, $year, $session, $mark, $grade) = split /	/, $line;
	if($course eq $find){
		$total{"$course:$year:$session"}+= $mark;
		$num{"$course:$year:$session"}+= 1;
	}
}

foreach my $year (1999..2001){
	foreach my $session ("S1", "S2", "SUM"){
		if(defined $total{"$find:$year:$session"}){
			my $avg = $total{"$find:$year:$session"}/$num{"$find:$year:$session"};
			print "$find:$year:$session avg: $avg\n";

		}

	}
	
}
