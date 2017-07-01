Title: The Tor BSD Diversity Project: OnionOO/JSON-based Statistics
CSS: torbsd.css
Author: attila
Editors: attila, gman
Data: 2017-06-30
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

## Diversity-Oriented Statistics Reports ##

This project aims at producing simple, relevant reports for making
broad conclusions about the network diversity of the public Tor relay
network, based on the new
[JSON Statistics Data](https://onionoo.torproject.org) put out by the
Tor Project.  While primarily providing a glance at the Tor network's
current state, some may find it useful for presentations or static,
broad snapshots of Tor.

This work is based on the simple
[Quick and Dirty Statistics](dirty-stats.html) scripts that gman999
wrote over a year ago.  We intend to move forward based on the new raw
statistics to provide a view of various diversity-oriented metrics
over various periods of time.  This is easier now because OnionOO can
provide us with
[historical data over a few useful time slices](https://onionoo.torproject.org/#history).
For instance, we can get consensus weight over the last week, three
weeks, month, or year.

__TDP__ focuses primarily on operating system diversity, specifically
as related to BSD Unix, but such diversity applies to more than just
number of relays by operating system. Other considerations are
important, such as average bandwidth per relay by operating system,
Autonomous System, and so on.

### Current Reports ###

Our current reports are simple point-in-time snapshots.  We are
working on producing reports in historical context, e.g.  over the
last year, month, week.  You can check out the
[scripts](https://github.com/torbsd/tdp-onion-stats) we wrote to
produce the reports; please feel free to open tickets in the GH Issue
tracker if you find problems or have patches.

For now we are updating the reports manually every week and only
producing plain text.  HTML output and automated updates are in the
works.

#### AS Reports ####

* [Autonomous System Numbers Ranked by Bandwidth](oostats/bw-by-as.txt)
* [Autonomous System Names Ranked by Bandwidth](oostats/bw-by-asn.txt)
* [Autonomous System Numbers Ranked by Total Consensus Weight Fraction](oostats/cweight-by-as.txt)
* [Autonomous System Names Ranked by Total Consensus Weight Fraction](oostats/cweight-by-asn.txt)

#### Country Reports ####

* [Country Codes Ranked by Bandwidth](oostats/bw-by-cc.txt)
* [Contry Codes Ranked by Total Consensus Weight Fraction](oostats/cweight-by-cc.txt)

#### Operating System Reports ####

* [Operating Systems Ranked by Bandwidth](oostats/bw-by-os.txt)
* [Operating Systems Ranked by Total Consensus Weight Fraction](oostats/cweight-by-os.txt)
* [Operating Systems Count](oostats/os-count.txt)

#### Tor Versions in Use Reports ####

* [Tor Versions in Use Ranked by Bandwidth](oostats/bw-by-vers.txt)
* [Tor Versions in Use Ranked by Total Consensus Weight Fraction](oostats/cweight-by-vers.txt)
* [Tor Versions Count](oostats/vers-count.txt)

{{footer.md}}
