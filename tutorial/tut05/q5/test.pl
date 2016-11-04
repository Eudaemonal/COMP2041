#!/usr/bin/perl -w

if(($#ARGV+1)==1){
	$num= $ARGV[0];
	$num =~s/-//;
}else{
	$num=10;
}

$idx = 0;
foreach $line(<STDIN>){
	print $line if($idx < $num);	
	$idx++;

}
