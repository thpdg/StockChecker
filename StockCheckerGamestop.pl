#!/usr/bin/perl -w
#use strict;
#use DBI;
use warnings;
use Term::ANSIColor;

while ( <> ) {
    $data .= $_;
}

# print "\n\nStocker Checker Parsing Script For New Egg\n";

while ($data =~ m/<title>(.+?)<\/title>/g) {
    print "\nFor $1 ";
}

if ($data =~ m/<span class="delivery-out-of-stock text-uppercase hide">Out of Stock<\/span>/g) {
     print color('bold red');
    print "\r\n\t\tCurrently Sold Out on Gamestop\n";
} else {
    print color('bold green');
    system('say Gamestop');
    print "\r\n\t\tPossibly Available on Gamestop\n";
}
print color('reset');

exit;
