#!/usr/bin/perl
use strict;
my $starting = 1;
my $flushing = 0;
while (<>) {
    if (/[^\s]/) {
        if (!$starting && $flushing) {
            print "\n";
        }
        s/((\s)*)/$2/g;
        s/^( )+//g;
        s/( )+$//g;
        print;
		$starting = 0;
        $flushing = 0;
    } else {
        $flushing = 1;
    }
}