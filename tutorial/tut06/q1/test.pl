#!/usr/bin/perl -w



$prev="";
$total_num = 0;
foreach $line (<>){
	
	if($line =~/(\d+) ([a-z ]+)/){
		$num = $1;
		$name = $2;
		#print "$num $name\n";
		if($name eq $prev){
			$total_num += $num;
		}
		else{
			print "$total_num $prev\n" if $prev ne "";
			$total_num = $num;
		}
		$prev = $name;
	}

}
print "$total_num $prev\n";
