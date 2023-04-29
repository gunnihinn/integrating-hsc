#!/usr/bin/env perl

use strict;
use warnings;

while (<>) {
	if (/%begin-proof/) {
		print "<div class=\"proof\"><p>\n";
	} elsif (/%end-proof/) {
		print "</div>\n";
	} else {
		print $_;
	}
}
