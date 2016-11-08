#!/usr/bin/perl -w



die "Useage:..." if(@ARGV != 3);

$filename = shift @ARGV;
$start = shift @ARGV;
$finish = shift @ARGV;

@space = ();

die "Useage:..." if(length($start) ne length($finish));

open F, $filename or die "Cannot open file";

foreach $line (<F>){
	chomp $line;
	if(length($line) eq length($start)){
		push @space, $line;
	}
}
close(F);
#========================================calculate path
%hash = ();
@queue = ();
push @queue, $start;

$found = 0;

while($found != 1 && $#queue+1 > 0){
	my $find = shift @queue;
	print "====> $find\n";
	foreach $word (@space){
		if(is_doublets($find, $word) && !$seen{$word}){
			print "< $word\n";
			push @queue, $word;
			$hash{$word} = $find;
			$seen{$word} = 1;
			if($word eq $finish){
				$found = 1;
				print "hahah======$word\n";
			}
		}
	}
}

if($found){

	@path = ();
	unshift @path, $finish;
	$print_word = $finish;
	while($print_word ne $start){
		$print_word = $hash{$print_word};
		unshift @path, $print_word;
	}

	print "Result\n";
	foreach $word (@path){
		print "$word\n";
	}
}
else{
	print "No solution.";
}

#========================================


sub is_doublets {
	my ($word1,$word2) = @_;
	my $ret = 0;
	my @ch1 = split //,$word1;
	my @ch2 = split //,$word2;
	if($#ch1 == $#ch2){
		foreach $i (0..$#ch1){
			$ret++ if($ch1[$i] ne $ch2[$i]);
		}
	}
	if($ret==1){
		return 1;
	}
	return 0;
}




