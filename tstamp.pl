#! perl
##
# time-stamp a file whose name is given on the command line
##
use strict;
use POSIX;
sub ts {
    my $fmt = $ENV{'TSTAMP_FMT'} || "%Y%m%d";
    my $t = shift(@_) || time;
    return POSIX::strftime($fmt, localtime($t));
}
my($f) = @ARGV or die "no filename given";
my @s = stat($f) or die "$f: cannot stat: $!";
printf "`last updated: %s`\n",ts($s[8]);
