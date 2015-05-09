Title: TDP Tor BSD Relay Guides
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.

# __TDP__ FreeBSD & OpenBSD Guides for Tor Relays #

## THESE ARE PRELIMINARY WORKS AT THE EARLY STAGE. ANONYMITY IS NOT A GAME, SO PLEASE DO NOT JUST ASSUME THESE GUIDES ARE FINE AS-IS. YOU HAVE BEEN WARNED. ##

__TDP__ is creating two guides to building and configuring Tor relays for FreeBSD and OpenBSD.

There are two versions of each. The first is considered 'production' quality ready for printing, translation and distribution. The second is considered 'development' where future ideas are noted, tested and confirmed. The development version will also contain more advanced changes on a BSD relay that are beyond the scope of the production version. Contributions are more than welcomed.

One issue to note is that we view various "optimization" attempts as a complex road, beyond just reading [Stevens' "TCP/IP Illustrated"](https://en.wikipedia.org/wiki/TCP/IP_Illustrated). It is not easy to understand the true effects of sysctl value changes and other kernel-level hacks, particularly with TCP traffic.

Tor is a (more or less) randomized routing network. That lack of consistency inhibits comparisons in performance beyond the obvious. Tor traffic on a relay can wildly vary day-to-day and month-to-month, regardless of any system optimization. For a useful overview of the problems with testing, see Kode Vicious' [reply to "How Not Why"] (https://queue.acm.org/detail.cfm?id=2732268) in ACM's Queue magazine from February 2015. His emphasis on repeatability tends to undercut many assumptions that are made about testing a host on an anonymity network. It can quickly degenerate into being a blind, counter-productive endeavor.

Nonetheless, there are some system-level changes we do recommend. But do not expect long lists of sysctl values and graphs illustrating the effects.

__TDP__ will look at optimizing Tor relay performance on high-bandwidth BSDs in the future, but we suspect that the default operating system installs should be sufficient for most relay operators' hardware and bandwidth. If Netflix can server [one-third of peak internet traffic in North America](https://www.youtube.com/watch?v=FL5U4wr86L4) with a default FreeBSD install, it's likely sufficient for the vast majority of Tor relays.

Contributions for NetBSD, DragonFly BSD, etc., are welcomed.

## FreeBSD Tor Relay Guide

production: [https://torbsd.github.io/fbsd-relays.html](https://torbsd.github.io/fbsd-relays.html)

development: [https://torbsd.github.io/fbsd-relays_dev.html](https://torbsd.github.io/fbsd-relays_dev.html)

## OpenBSD Tor Relay Guide

production: [https://torbsd.github.io/obsd-relays.html](https://torbsd.github.io/obsd-relays.html)

development: [https://torbsd.github.io/obsd-relays_dev.html](https://torbsd.github.io/obsd-relays_dev.html) 
