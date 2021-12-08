#!/usr/bin/perl -w
#use strict;
#use DBI;
use warnings;
use Term::ANSIColor;

while ( <> ) {
    $data .= $_;
}

# print "\n\nStocker Checker Parsing Script For Costco\n";

while ($data =~ m/<title>(.+?)<\/title>/g) {
    print "\nFor $1 ";
}

if ($data =~ m/alt="Out of Stock"/g) {
    print color('bold red');
    print "\r\n\t\tCurrently Sold Out on Costco\n";
} else {
    print color('bold green');
    system('say Costco');
    print "\r\n\t\tPossibly Available on Costco\n";
}
print color('reset');

exit;
