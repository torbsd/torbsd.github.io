Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Date: 2015-10-29
X-Note: These lines at the top are multimarkdown metadata; leave them.

{{header.md}}

##A Blog, or More Accurately, a Central Location for Announces and Notes##

###20151030###

__The BSD Relay Guides__ by gman999


In their current forms, the [BSD relay guides](relay-guides.html) are unclear and sloppy, and possibly inaccurate in some places. We are putting some work into the [FreeBSD Guide for Configuring Relays](fbsd-relays.html), and will probably divide it into two parts: the short version for the impatient, with other topics being migrated to another page.

There is a lot of related topics to cover: to ZFS or not, slimming down a FreeBSD build, etc.

Input is welcomed. Stay tuned.

###20151029###

__Our First Bells__ by gman999


Over six months ago we launched TDP in its current form. In March, the [GitHub repository] (https://github.com/torbsd) was initialized and we put some meat on the skeleton we had been toying around with.

We count a lot of accomplishments since launching, but we should be honest about our weakest point: marketing and publicity. Of course, it's something we're proud of to an extent since a lot of projects just focus on the publicity part, and don't actually accomplish much else. Nevertheless, we will try to start providing a clearer picture of our progress and notes here.

Quite frankly in BSD land, all fluff and no product doesn't get you much credibility. Talk is considered cheap, while good code is priceless.

We announced the sixth release of Tor Browser two days ago, version 5.0.3, which was a major milestone for us. We were excited by some of the [feeback](https://lists.torproject.org/pipermail/tor-talk/2015-October/039351.html) on tor-talk.

The [presentation](http://www.queair.net/br-pres) at [BSDCon Brasil](http://2015.bsdcon.com.br) was a success, with the first BSD relays launched in that country, and which now account for up to a third of observed Tor bandwidth there. More relays should be coming online in Brazil soon, and we know of a few BSD bridges that came online.

Interestingly, one of the relays running on a residential connection, had to be migrated to a bridge. Apparently, the relay admin's online banking provider blocked the relay's IP, not because it was an exit relay, but just becuase it was a public Tor IP. Let's hear it for collective punishment.

Finally, we will be catching up with the publicity we should have previously done in the near future. Bear with this blog's format, we are not really the WordPress types, if you hadn't guessed already.

###20151028###

__OS Diversity and Beyond__ by gman999


TDP focuses on operating system diversification for Tor. But the need for diversity is more than just operating systems. A quick browse at [one of the Tor Status sites](https://torstatus.rueckgr.at), or more specifically the [Network Statistics Graphs](https://torstatus.rueckgr.at/network_detail.php), the lack of geographical diversity is disturbing.

Parsing the list of Tor relays, there are a number of ISO 8166-1 two-digit country codes [that have no relays](tor-less-ccs.txt). Spreading the Tor network out to those countries should be a primary concern, regardless of operating system.

* Antigua & Barbuda (AG), that hub of online gaming, has no relays?

* Angola (AO), whose capital Luanda is one of the more hopping cities in southern Africa now?

* Jordan (JO), which is apparently one of the better connected locations in the region?

* Latin America and Africa are particularly underrepresented. And for Brazil with over 200 million people and a developed infrastructure, possessing under 30 relays is shocking.

* Pakistan (PK), also, has no public Tor relays, and India (IN) has under ten, although we're working on the latter case.

We don't know the particulars of infrastructure, connectivity costs, etc., in a lot of those countries, but the underrepresented regions need a dedicated focus.

Also disturbing is the concentration in observed Tor bandwidth [by country code](relays-by-cc.txt). Germany and the US contain more than a thousand relays each accounting for around a third of the total number of Tor relays globally.

We will continue to tinker with the data about geographical diversity in the future, but in the meantime, if you have contacts, friends or families in the underrepresented country codes, now is the time to explore the possibility of getting more Tor relays there.


###20151026###

__Tor Browser version 5.0.3 for OpenBSD__ by gman999


The Tor BSD Diversity Project (TDP) is proud to announce the release of Tor Browser (TB) version 5.0.3 for OpenBSD.

[TDP](https://torbsd.github.io) is an effort to extend the use of the BSD Unixes into the Tor ecosystem, from the desktop to the network.

The 5.0.3 release is the sixth release of the Tor Browser from TDP.

To install TB for OpenBSD, please see [http://mirrors.nycbug.org/pub/snapshots/packages/amd64/README](http://mirrors.nycbug.org/pub/snapshots/packages/amd64/README).

TDP is focused on diversifying the Tor network, with TB being the flagship project. Additional efforts are made to increase the number of *BSD relays on the Tor network.

Since its launch in March 2015, TDP contributed significantly. In addition to the TB releases, both BSDCan and BSDCon Brasil featured TDP-focused meetings.

In early October, a [TDP presentation](http://www.queair.net/br-pres) prompted a significant increase in Tor relays in Brazil. Before the presentation, there were around 22 Tor relays, all of which were Linux in addition to two Windows nodes.

In the weeks after the presentation, several new *BSD Tor relays appeared, accounting for up to 35% of observed Tor bandwidth in Brazil.

Finally, TDP is working to convince BSD-using businesses to follow Mozilla's December 2014 example to run Tor relays. At this point, New York Internet has committed to running two high-bandwidth relays, one FreeBSD and the other OpenBSD, at its facility in Bridgewater, New Jersey.

TDP's source code repository resides at [https://github.com/torbsd](https://github.com/torbsd).

TDP is seeking funding to continue and extend its efforts. Please contact us if interested in assisting TDP, allowing us to dedicate more time to the project.

{{footer.md}}
