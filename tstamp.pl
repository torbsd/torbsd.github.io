#! perl
##
# time-stamp a file whose name is given on the command line
##
use strict;
use POSIX;
sub ts {
    my $fmt = $ENV{'TSTAMP_FMT'} || "%c UTC";
    my $t = shift(@_) || time;
    return POSIX::strftime($fmt, gmtime($t));
}
my($f) = @ARGV or die "$0: no filename given";
my @s = stat($f) or die "%0: cannot stat $f: $!";
my $ts = ts($s[9]);
printf "`last updated: $ts`\n";
