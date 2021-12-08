#!/usr/bin/perl -w
#use strict;
#use DBI;
use warnings;
use Term::ANSIColor;

while ( <> ) {
    $data .= $_;
}

# print "\n\nStocker Checker Parsing Script For Walmart\n";

while ($data =~ m/<title>(.+?)<\/title>/g) {
    print "\nFor $1 ";
}

if ($data =~ m/>out of stock<\//g) {
    print color('bold red');
    print "\r\n\t\tCurrently Sold Out on Walmart\n";
} else {
    if($data =~ m/on backorder/g) {
        print color('bold red');
        print "\r\n\t\tCurrently on backorder at Walmart\n";
    } else {
        print color('bold green');
        system('say Walmart');
        print "\r\n\t\tPossibly Available on Walmart\n";
    }
}
print color('reset');

exit;
