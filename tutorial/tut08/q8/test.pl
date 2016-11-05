#!/usr/bin/perl -w



@include_dirs = ('/usr/include/','/usr/local/include','/usr/include/x86_64-linux-gnu');

sub include_file($@);

sub include_file($@) {
    my ($file,@prefixes) = @_;
    foreach $prefix (@prefixes) {
        # this function is recursive so a local filehandle is essential
        my $path = "$prefix$file";
        next if !-r $path;
        open my $f, "<$path" or die "$0: can not open $path: $!";
        while ($line = <$f>) {
            if ($line =~ /^#\s*include\s*"(.*?)"/) {
                include_file($1, ('',@include_dirs));
            } elsif ($line =~ /^#\s*include\s*<(.*?)>/) {
                include_file($1, @include_dirs);
            } else {
                print $line;
            }
        }
        close $f;
        return;
    }
    die "$0: can not find: $file\n";
}

foreach $file (@ARGV) {
    include_file($file, (''));
}
