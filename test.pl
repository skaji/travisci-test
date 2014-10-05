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

run qw(uname -a);
run qw(env);
run qw(gcc --version);

open my $fh, ">", "test.txt" or die "open test.txt: $!";
say {$fh} "hoge";
close $fh;


