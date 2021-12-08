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

if ($data =~ m/title=\"Auto Notify/g) {
     print color('bold red');
    print "\r\n\t\tCurrently On Hold on New Egg\n";
} else {
    if ($data =~ m/Sold Out<\/span>/g) {
        print color('bold red');
        print "\r\n\t\tCurrently Sold Out on New Egg\n";
    } else {
        print color('bold green');
        system('say New Egg');
        print "\r\n\t\tPossibly Available on New Egg\n";
    }
}
print color('reset');

exit;
