#!/usr/bin/perl -w


foreach $arg (@ARGV){
	$count{$arg}++;
}
foreach $elem (keys %count){
	$weigh{$elem} = $count{$elem}*$elem;
}
@elems = keys %weigh;
@sort_elems = reverse(sort {$weigh{$a} <=> $weigh{$b}} @elems);

print "$sort_elems[0]\n";


