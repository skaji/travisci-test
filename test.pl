#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010;

print "ARGV$_: $ARGV[$_]\n" for 0..$#ARGV;
