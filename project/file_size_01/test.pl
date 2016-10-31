#!/usr/bin/perl -w


foreach $filename (glob "test/*"){
	open F, $filename;
	@content = <F>;
	$line = $#content + 1;
	#print "$line\n";
	$filename=~s/test\///;
	if($line > 50){
		push @largefile, $filename;
	}
	else{
		push @smallfile, $filename;
	}
	close(F);
}

print "smallfile: @smallfile\n";
print "largefile: @largefile\n";

