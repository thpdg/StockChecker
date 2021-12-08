# Checks a Best Buy product page for strings that would indicate item availability
#!/usr/bin/perl -w
#use strict;
use warnings;
use Term::ANSIColor;

while ( <> ) {
    $data .= $_;
}

# print "\n\nStocker Checker Parsing Script For Best Buy\n";


while ($data =~ m/<title >(.+?)<\/title>/g) {
    print "\nFor $1 - SKU ";
}

while ($data =~ m/<button class="btn btn-disabled btn-lg btn-block add-to-cart-button" disabled="" type="button" data-sku-id="(.+?)" style="padding:0 8px">Sold Out<\/button>/g) {
    print color('bold red');
    # system('say Not Best Buy');
    print "$1 \r\n\t\tCurrently Sold Out on Best Buy\n";
}

while ($data =~ m/<button class="btn btn-primary btn-lg btn-block btn-leading-ficon add-to-cart-button" type="button" data-sku-id="(.+?)" style="padding:0 8px"><svg aria-hidden="true" role="img" viewBox="0 0 100 100" style="width:16px;height:16px;margin-bottom:-2px;margin-right:9px;fill:currentColor"><use href="\/~assets\/bby\/_img\/int\/plsvgdef-frontend\/svg\/cart.svg#cart" xlink:href="\/~assets\/bby\/_img\/int\/plsvgdef-frontend\/svg\/cart.svg#cart"><\/use><\/svg>Add to Cart<\/button>/g) {
    print color('bold green');
    system('say Best Buy');
    print "$1 \r\n\t\tCurrently in stock on Best Buy!\n"
}

print color('reset');

exit;
