#!/usr/bin/perl -w

$rev = 0;
$pattern = shift @ARGV;
if($pattern eq "-v"){
	$rev = 1;
	$pattern =shift @ARGV;
}
foreach $line (<>){

	if($rev == 1){
		print $line if(!grep(/$pattern/, $line));

	}else{
		print $line if(grep(/$pattern/, $line));
	}

}
