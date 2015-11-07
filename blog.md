Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Date: 2015-10-29
X-Note: These lines at the top are multimarkdown metadata; leave them.

{{header.md}}

##A Blog, or a Central Location for Announces and Notes##

__November 2015__

[Thoughts on Reproducible Builds](#repro-builds) &#8916;  [It's Up to You](#up-to-you)

__October 2015__

[Updated Tor Browser Packages](#tb-update) &#8916; [The BSD Relay Guides](#relay-guides) &#8916; [Our First Bells](#first-bells) &#8916; [Beyond OS Diversity](#beyond-os) &#8916; [Tor Browser version 5.0.3 for OpenBSD](#tb-5.0.3)

[From the Attic](#attic)


###20151104###

<a id="repro-builds">__Thoughts on Reproducible Builds__</a> by gman999

Just a quick link to a pleasantly polemical post from September 19th by [OpenBSD's](http://www.openbsd.org) tedu@ entitled [reproducible builds are a waste of time](http://www.tedunangst.com/flak/post/reproducible-builds-are-a-waste-of-time). There's a follow-up postscript at the end of the post, reacting to a [lobste.rs thread](https://lobste.rs/s/5bbdbo/reproducible_builds_are_a_waste_of_time/).

###20151103###

<a id="up-to-you">__It's Up to You__</a> by gman999

Since we launched __TDP__ there has been two of us spending a lot of time, energy and resources on getting the various projects designed and implemented.

But there's is always room for one, two, three more.

It's a perfect opportunity to start testing Tor Browser 5.0.3. [Fork the repository](https://github.com/torbsd/openbsd-ports), submit [issues](https://github.com/torbsd/openbsd-ports/issues) about the software.

There's more to do beyond TB though. If you are around a technical user group, get a discussion going about Tor. Have a how-to meeting on running a public relay, especially for those who have access to decent infrastructure and bandwidth, like those at universities or internet-facing firms.

Setting up a high-bandwidth Tor bridge is painless and it will just be a safe gateway for Tor users.

There is no excuse why every BSD user group or conference shouldn't have a discussion or session focused on "recruiting" BSD people to run Tor relays. Many people in the US, Europe and eastern Asia, in particular have excess bandwidth at home. Work at a firm that uses the BSDs in production? Get them to run a relay or two.

For those who dwell in BSD land, join the [Tor-BSD mailing list](http://lists.nycbug.org/mailman/listinfo/tor-bsd). Running a BSD Tor relay?  Join the [unofficial BSD Buildbot for Tor](http://buildbot.pixelminers.net).

There's a lot we'd like to accomplish with __TDP__, and we don't claim a monopoly on much of anything. We do encourage you to take some initiative and move things forward.

###20151031###

<a id="tb-update">__Updated Tor Browser Packages__</a> by gman999

The upstream code from the Tor Project and above them Mozilla is a moving target we contend with each release. Then there is the ultimate moving target: the incessant war between surveillance and anonymity, censorship and circumvention. Finally there is the operating system as a moving target all Tor Browser porters face.

Developing ports on OpenBSD means building on snapshots, a.k.a., [-current](http://www.openbsd.org/faq/faq5.html#Flavors). OpenBSD snapshots are often released several times a week, and as with any other development operating system branch, those changes are sometimes significant. What might work today may be broken tomorrow. It was no surprise that our TB 5.0.3 release was broken on the OpenBSD snapshot released just a few days later.

[Daniel Jakots](https://lists.torproject.org/pipermail/tor-talk/2015-October/039360.html) noticed this as we did, and we updated the Tor packages accordingly. We made an added change by removing the tbb meta-package, simplifying the 5.0.3 release a bit more.

###20151030###

<a id="relay-guides">__The BSD Relay Guides__</a> by gman999

In their current forms, the [BSD relay guides](relay-guides.html) are unclear and sloppy, and possibly inaccurate in some places. We are putting some work into the [FreeBSD Guide for Configuring Relays](fbsd-relays.html), and will probably divide it into two parts: the short version for the impatient, with other topics being migrated to another page entiled "Advanced."

There is a lot of related topics to cover: to ZFS or not, slimming down a FreeBSD build, etc.

Input is welcomed. Stay tuned.

###20151029###

<a id="first-bells">__Our First Bells__</a> by gman999

Over six months ago we launched __TDP__ in its current form. In March, the [GitHub repository] (https://github.com/torbsd) was initialized and we put some meat on the skeleton we had been toying around with.

We count a lot of accomplishments since launching, but should be honest about __TDP's__ weakest point: marketing and publicity. Of course, it's something we're proud of to an extent. Too many open source projects focus almost solely on publicity, and don't actually accomplish much else. Nevertheless, we will try to start providing a clearer picture of our progress and notes here.

Quite frankly in BSD land, all fluff and no product doesn't get you much credibility. Talk is considered cheap, while good code and real contributions are priceless.

We announced the sixth release of Tor Browser two days ago, version 5.0.3, which was a major milestone for us. We were excited by some of the [feedback](https://lists.torproject.org/pipermail/tor-talk/2015-October/039351.html) on the Tor-talk.

The [presentation](20151010-br/index.html) at [BSDCon Brasil](http://2015.bsdcon.com.br) was a success, with the first BSD relays launched in that country, and which now account for up to a third of observed Tor bandwidth there. More relays should be coming online in Brazil soon, and we know of a few BSD bridges that came online.

Interestingly, one of the relays running on a residential connection, had to be migrated to a bridge. Apparently, one of the relay admin's online services blocked the relay's IP. The IP wasn't an exit relay, but it was a public Tor IP. Let's hear it for collective punishment.

Finally, we will be catching up with the publicity we should have previously done in the near future. Bear with this blog's format, we are not really the WordPress types, if that wasn't already apparent.

###20151028###

<a id="beyond-os">__Beyond OS Diversity__</a> by gman999

__TDP__ focuses on operating system diversification for Tor with BSD Unix. But the need for diversity is more than just operating systems. A quick browse at [one of the Tor Status sites](https://torstatus.rueckgr.at), or more specifically the [Network Statistics Graphs](https://torstatus.rueckgr.at/network_detail.php), the lack of geographical diversity is disturbing.

Parsing the list of Tor relays, there are a number of ISO 8166-1 two-digit country codes [that have no relays](tor-less-ccs.txt). Spreading the Tor network out to those countries should be a primary concern, regardless of operating system.

* Antigua & Barbuda (AG), that hub of online gaming, has no relays?

* Angola (AO), whose capital Luanda is one of the more hopping cities in southern Africa now?

* Jordan (JO), which is apparently one of the better connected locations in the region?

* Latin America and Africa are particularly underrepresented. And for Brazil with over 200 million people and a developed infrastructure, possessing under 30 relays is shocking.

* Pakistan (PK), has no public Tor relays, and India (IN) has under ten, although we're working on the latter case.

We don't know the particulars of infrastructure, connectivity costs, etc., in a lot of those countries, but the underrepresented regions need a dedicated focus.

Also disturbing is the concentration of public relays [by country code](relays-by-cc.txt). Germany and the US contain more than a thousand relays each, accounting for more than a third of the total number of Tor relays globally.

Of course, using Tor in some of those places may be dangerous or cost prohibitive.

We will continue to tinker with the data about geographical diversity in the future, but in the meantime, if you have contacts, friends or families in the underrepresented country codes, now is the time to explore the possibility of getting Tor relays into the Tor-less country codes.

###20151026###

<a id="tb-5.0.3">__Tor Browser version 5.0.3 for OpenBSD__</a> by gman999

__The Tor BSD Diversity Project (TDP)__ is proud to announce the release of Tor Browser (TB) version 5.0.3 for OpenBSD.

__[TDP](https://torbsd.github.io)__ is an effort to extend the use of the BSD Unixes into the Tor ecosystem, from the desktop to the network.

The 5.0.3 release is the sixth release of the Tor Browser from __TDP__.

To install TB for OpenBSD, please see [http://mirrors.nycbug.org/pub/snapshots/packages/amd64/README](http://mirrors.nycbug.org/pub/snapshots/packages/amd64/README).

__TDP__ is focused on diversifying the Tor network, with TB being the flagship project. Additional efforts are made to increase the number of *BSD relays on the Tor network.

Since its launch in March 2015, __TDP__ contributed significantly. In addition to the TB releases, both BSDCan and BSDCon Brasil featured __TDP__-focused meetings.

In early October, a __TDP__ [presentation](20151010-br/index.html) prompted a significant increase in Brazilian Tor relays. Before the presentation, there were around 22 Tor relays, all of which were Linux in addition to two Windows nodes.

In the weeks after the presentation, several new *BSD Tor relays appeared, accounting for up to 35% of observed Tor bandwidth in Brazil.

Finally, __TDP__ is working to convince BSD-using businesses to follow Mozilla's December 2014 example to run Tor relays. At this point, New York Internet has committed to running two high-bandwidth relays, one FreeBSD and the other OpenBSD, at its facility in Bridgewater, New Jersey.

__TDP's__ source code repository resides at [https://github.com/torbsd](https://github.com/torbsd).

__TDP__ is seeking funding to continue and extend its efforts. Please contact us if interested in assisting __TDP__, allowing us to dedicate more time to the project.

###<a id="attic">From the Attic</a>###

Attila blog post on [OpenBSD Tor Browser Ports Status Update: July 2015, 4.5.3 (yes, I know it's August)](http://trac.haqistan.net/blog/tor-browser-ports-progress-3)

Attila blog post on [OpenBSD Tor Browser Ports Status Update: June 2015, v4.5.2](http://trac.haqistan.net/blog/tor-browser-ports-progress-2)

Attila blog post on [OpenBSD Tor Browser Port Progress and Status](http://trac.haqistan.net/blog/tor-browser-ports-progress)

Attila blog post on [Adventures in Ports: The Tor Browser](http://trac.haqistan.net/blog/adventures-ports-tor-browser)

Early Rings ["Porting Tor Browser to the BSDs" thread on Tor-BSD list](http://lists.nycbug.org/pipermail/tor-bsd/2015-February/000225.html)

{{footer.md}}
