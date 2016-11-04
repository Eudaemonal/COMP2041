#!/usr/bin/perl -w

$pattern = shift @ARGV;
print grep(/$pattern/, <>);
