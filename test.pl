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

run "curl -LO ftp://xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz; true";
run "ls -al";
run "curl -O ftp://xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz; true";
run "ls -al";
run "wget ftp://xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz; true";
run "ls -al";

