Title: TDP Tor BSD Relay Guides
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

## __TDP__ FreeBSD & OpenBSD Guides for Tor Relays ##

__THESE ARE PRELIMINARY WORKS AT THE EARLY STAGE. ANONYMITY IS NOT A GAME, SO PLEASE DO NOT JUST ASSUME THESE GUIDES ARE FINE AS-IS. YOU HAVE BEEN WARNED.__

__TDP__ is creating two guides to building and configuring Tor relays for FreeBSD and OpenBSD.

There will be two parts to each.

The first part will be a "quick and dirty" guide to getting a Tor relay up quickly.

The second will be some other ideas for configuration, covering more optional enhancements.

One issue to note is that we view various optimization attempts as a
complex road, beyond just reading [Stevens' "TCP/IP Illustrated"](https://en.wikipedia.org/wiki/TCP/IP_Illustrated).

It is not easy to understand the true effects of sysctl value changes and other kernel-level hacks, particularly with TCP traffic. Tor is a (more or less) randomized routing network. That lack of consistency inhibits comparisons in performance beyond the obvious. Tor traffic on a relay can vary wildly day-to-day and month-to-month, regardless of any system optimization. For a useful overview of the problems with testing, see Kode Vicious' [reply to "How Not Why"](https://queue.acm.org/detail.cfm?id=2732268) in ACM's Queue magazine from February 2015. His emphasis on repeatability tends to undercut many assumptions that are made about testing a host on an anonymity network. It can quickly degenerate into being a blind, counter-productive endeavor.

Nonetheless, there are some system-level changes we do recommend. But
do not expect long lists of sysctl values and graphs illustrating the
effects.

__TDP__ will look at optimizing Tor relay performance on
high-bandwidth BSDs in the future, but we suspect that the default
operating system installs (outside of some recommended changes) should
be sufficient for most relay operators' hardware and bandwidth. If
Netflix can serve
[one-third of peak internet traffic in North America](https://www.youtube.com/watch?v=FL5U4wr86L4)
with a default FreeBSD install, it's likely sufficient for the vast
majority of Tor relays.

Contributions from other BSDs are welcomed.

## FreeBSD Tor Relay Guide

:    [https://torbsd.github.io/fbsd-relays.html](fbsd-relays.html)

## OpenBSD Tor Relay Guide

:    [https://torbsd.github.io/obsd-relays.html](obsd-relays.html)

{{footer.md}}
