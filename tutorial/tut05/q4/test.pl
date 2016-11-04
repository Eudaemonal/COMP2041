#!/usr/bin/perl -w


foreach (<>){
	s/[aeiou]//gi;
	print;
}
