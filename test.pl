#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010;
use POSIX qw(strftime);

open my $fh, ">", "release.txt" or die;

print {$fh} strftime("%F %T", localtime), "\n";
print {$fh} "ARGV$_: $ARGV[$_]\n" for 0..$#ARGV;


