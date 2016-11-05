#!/usr/bin/perl -w


die "Usage: $0 <files>\n" if !@ARGV;

foreach $file (@ARGV) {
    open(IN, "$file") || die("Can not open $file: $!");
    @lines = <IN>;  # reads entire file into array
    close(IN);
    open(OUT, ">$file") || die("Can not open $file: $!");
    foreach $line (@lines) {
        print OUT $line if $line !~ /^\s*$/;
    }
    close(OUT);
}
