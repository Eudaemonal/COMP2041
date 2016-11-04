#!/usr/bin/perl -w


$filename = "phones.txt";
open F, $filename or die "Cannot open file: $filename";

foreach $line (<F>){
	chomp $line;
	my ($id, $type, $number) = split /,/ , $line;
	$phones{"$id:$type"} = $number;

}
close F;

$filename = "people.txt";
open F, $filename or die "Cannot open file: $filename";

foreach $line (<F>){
    chomp $line;
    my ($id,$name,$street,$suburb) = split /,/, $line;
    print "$name\n$street, $suburb\nPhones: ";
	my $nphones = 0;
	foreach $type ('mobile', 'home', 'work'){
		my $key = "$id:$type";
		if(defined $phones{$key}){
			$num = $phones{$key};
			print ", " if($nphones++ > 0);
			print "$num ($type)";
		}		
	}
	print "?" if($nphones == 0);
	print "\n\n";
}




