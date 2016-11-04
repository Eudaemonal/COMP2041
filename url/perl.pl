#!/usr/bin/perl -w



$url = "http://www.unsw.edu.au";
open F, "wget -q -O- $url|" or die;

while($line=<F>){
	print $line;
}

