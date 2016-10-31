#!/usr/bin/perl -w



$unsw_latitude = -33.9172238;
$unsw_longitude = 151.2302268;



%distance = ();
foreach $line (<>){
	chomp($line);
	if($line=~/(z\d{7}) lives at (.*) (.*) in (.*)/){
		my $id = $1;
		my $latitude = $2;
		my $longitude = $3;
		my $suburb = $4;
		
		$distance{$id} = sqrt(($unsw_latitude - $latitude)**2 + ($unsw_longitude - $longitude)**2);
	}
}

@users = keys %distance;
@sort_users = sort {$distance{$a} <=> $distance{$b}} @users;
foreach $user (@sort_users){
	print "$user - $distance{$user}\n";
}

