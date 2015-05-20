#! perl
##
# time-stamp a file whose name is given on the command line
##
use strict;
use POSIX;
sub ts {
    my $fmt = $ENV{'TSTAMP_FMT'} || "%c";
    my $t = shift(@_) || time;
    return POSIX::strftime($fmt, localtime($t));
}
my($f) = @ARGV or die "no filename given";
open(GIT,"git log $f|") or die("git log $f: $?");
my $ts = undef;
while (defined(my $line = <GIT>)) {
    if ($line =~ /^Date:\s*(\S.*)$/) {
	$ts = $1;
	last;
    }
}
close(GIT);
if (!defined($ts)) {
    my @s = stat($f) or die "$f: cannot stat: $!";
    $ts = ts($s[9]);
}
printf "`last updated: $ts`\n";
