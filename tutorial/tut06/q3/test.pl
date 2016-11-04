#!/usr/bin/perl -w




$x = 'x';
for ($i = 1; $i <= 3; $i++) {
    $x = "($x)";
}
print "$x\n";

It iterates three times through the loop, and each iteration wraps a pair of parentheses around what was there on the last iteration so it prints:

(((x)))

@hi = split //,"hello";
for ($i = 0; $i < 4; $i++) {
    print $hi[$i];
}
print "\n";

The idiom split // splits a string into an array of individual characters (in this case ("h","e","l","l","o"). The loop iterates over the first four of these characters. So it prints:

hell

@vec = (10 .. 20);
print "@vec[1..3]\n";

The first statement produces an array containing the integers between 10 and 20 inclusive; the expression in the print statement takes a slice of this array from the 2nd to the 4th elements (remember that index values start at zero) so i prints:

11 12 13

foreach $n (1..10) {
    last if ($n > 5);
    print "$n ";
    next if ($n % 2 == 0);
    print "$n ";
}
print "\n";

The loop iterates with $n set to the values from 1 to 10 inclusive. The last terminates the loop as soon as the value of $n exceeds five (cf. break in C or Java). The next starts the next iteration straight away whenever the test succeeds; which occurs for each even number, so that the evens only get printed once so it prints:

1 1 2 3 3 4 5 5

