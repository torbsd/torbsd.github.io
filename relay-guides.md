Title: TDP Tor BSD Relay Guides
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.

# __TDP__ FreeBSD & OpenBSD Guides for Tor Relays #

## THESE ARE PRELIMINARY WORKS AT THE EARLY STAGE. ANONYMITY IS NOT A GAME, SO PLEASE DO NOT JUST ASSUME THESE GUIDES ARE FINE AS-IS. ##

__TDP__ is creating two guides to building and configuring Tor relays for FreeBSD and OpenBSD.

There are two versions of each. The first is considered 'production' quality for printing, translation and distribution. The second is considered 'development' in that future ideas are noted, tested and confirmed. Contributations are more than welcomed.

One issue to note is recommended sysctl knobs and other kernel-level hacks. It is a difficult task to determine how to optimize a Tor relay. Tor is a (more or less) randomized routing network. That lack of consistency inhibits comparisons in performance beyond the obvious. Tor traffic on a relay can wildly vary day-to-day and month-to-month, regardless of any system optimization. For a useful overview of the problems with testing, see "Kode Vicious'" [reply to "How Not Why"] (https://queue.acm.org/detail.cfm?id=2732268) in ACM's Queue magazine. His emphasis on repeatability tends to undercut laundry lists of sysctl knobs for a host on an anonymity network. It can quickly degenerate into being a blind, counter-productive endeavor.

Contributions for NetBSD, DragonFly BSD, etc., are welcomed.

## FreeBSD Tor Relay Guide

production: [https://torbsd.github.io/fbsd-relays.html](https://torbsd.github.io/fbsd-relays.html)

development: [https://torbsd.github.io/fbsd-relays_dev.html](https://torbsd.github.io/fbsd-relays_dev.html)

## OpenBSD Tor Relay Guide

production: [https://torbsd.github.io/obsd-relays.html](https://torbsd.github.io/obsd-relays.html)

development: [https://torbsd.github.io/obsd-relays_dev.html](https://torbsd.github.io/obsd-relays_dev.html) 
