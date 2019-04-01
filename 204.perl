#!/usr/bin/perl
while (<>) {
    s/((\w)+?)((\W)+?)((\w)+?)(\W)/$5$3$1$7/;
    print;
}