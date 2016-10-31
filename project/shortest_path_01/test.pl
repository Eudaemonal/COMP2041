#!/usr/bin/perl -w


die "Useage: $0 <start> <finish>\n" if @ARGV!=2;
$start = $ARGV[0];
$finish = $ARGV[1];

while(<STDIN>){
    /(\w+)\s+(\w+)\s+(\d+)/ || next;
    $distance{$1}{$2} = $3;
    $distance{$2}{$1} = $3;
}



