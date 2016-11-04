#!/usr/bin/perl -w


if(@ARGV && $ARGV[0] eq '-n'){
	$doNumber = 1;
	shift @ARGV;
}

if(@ARGV && $ARGV[0] eq '-v'){
	$doVisible = 1;
	shift @ARGV;
}

$idx = 1;
foreach $line (<>){
	printf "%6d	", $idx++ if($doNumber);
	if($doVisible){
		chomp($line);
        foreach $c (split //, $line) {
            if (ord($c) >= 32) {
                print "$c";
            }
            else {
                print "^".chr(ord($c)+64);
            }
        }
        print "\$\n";
	}else{
		print $line;
	
	}
}
