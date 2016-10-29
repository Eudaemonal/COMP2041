#!/usr/bin/perl -w



$filename = 'data.txt';
$content = 'perl test data';
&write_file($filename, $content);


sub write_file {
	my ($filename, $content) = @_;
 
	open my $out, '>:encoding(UTF-8)', $filename or die "Could not open '$filename' for writing $!";;
	print $out $content;
	close $out;
 
	return;
}


