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

run "which $_; true" for qw(gcp gtar curl);
run "brew list | cat";

run "sudo true && echo sudo ok";


