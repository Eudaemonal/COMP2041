#!/usr/bin/perl -w


foreach $filename (glob "dir/*.py"){
	print "$filename\n";
}
