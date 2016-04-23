#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010;

say "-------> \%ENV";
say "$_: $ENV{$_}" for sort keys %ENV;

say "-------> $^X -V";
system "$^X -V";
say "-------> sw_vers";
system "sw_vers";

