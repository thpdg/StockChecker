#!/usr/bin/perl -w
#use strict;
#use DBI;
use warnings;
use Term::ANSIColor;


while ( <> ) {
    $data .= $_;
}

# print "\n\nStocker Checker Parsing Script For Amazon\n";

while ($data =~ m/<title>(.+?)<\/title>/g) {
    print "\nFor $1 ";
}

if ($data =~ m/Currently unavailable/g) {
    print color('bold red');
    print "\r\n\t\tCurrently Sold Out on Amazon\n";
} else {
    print color('bold green');
    system('say Amazon');
    print "\r\n\t\tPossibly Available on Amazon\n";
}
print color('reset');

exit;
