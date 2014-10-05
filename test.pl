#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010;

sub run {
    my @cmd = @_;
    say "==> @cmd";
    chomp( my @out = `@cmd 2>&1` );
    say "    $_" for @out;
}

for my $num (31..37) {
    print "\e[1;${num}m$num ansii color test\e[m\n";
}
