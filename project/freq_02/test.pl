#!/usr/bin/perl -w


foreach $line (<STDIN>){
	$line = lc($line);
	my @words = $line =~/([a-z]+)/g;
	foreach $word (@words){
		$bigram_count{$last_word}{$word} ++ if $last_word;
		$last_word= $word;
	}
}


foreach $first_word (sort keys %bigram_count) {
    my $most_common_second_word = "";
    my $most_common_count = 0;
    my $total_count = 0;
    foreach $second_word (sort keys %{$bigram_count{$first_word}}) {
        my $b = $bigram_count{$first_word}{$second_word};
        $total_count += $b;
        if ($b > $most_common_count) {
            $most_common_second_word = $second_word;
            $most_common_count = $b;
        }
    }
    print "$first_word($total_count) $most_common_second_word($most_common_count)\n";
}
