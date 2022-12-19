#!/usr/bin/env perl

use strict;
use warnings;

my %accents = (
	q{\\\\"a} => 'ä',
	q{\\\\'e} => 'é',
);

while (<>) {
	for my $key (keys %accents) {
		my $val = $accents{$key};
		s/$key/$val/g;
	}
	print $_;
}
