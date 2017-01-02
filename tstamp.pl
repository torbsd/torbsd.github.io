#!/usr/bin/env perl
# -*- mode:perl;indent-tabs-mode:t;tab-width:8;perl-indent-level:8 -*-
##
# emit a markdown timestamp on stdout based on the mtime of our argument
##

use strict;
use POSIX;

sub ts {
	my($t) = @_;
	my $fmt = $ENV{'TSTAMP_FMT'} || '%c UTC';
	return POSIX::strftime($fmt, gmtime($t));
}

my($f) = @ARGV		or die "no filename given";
my @s  = stat($f)	or die "cannot stat $f: $!";
my $ts = ts($s[9]);

printf "`last updated: $ts`\n";
