Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Date: 2015-10-29
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

##A Blog, or a Central Location for Announces and Notes##

__January 2016__

[Still Plugging Away](#still-here)

__December 2015__

[Notes From The Front](#notes-from-the-front) [%sep] [Announcing Porting PETs](#pp-announce) [%sep] [Thinking About 2016](#2016-events)


__November 2015__

[PETs Porting Targets](#pets-ports) [%sep] [The Case of the Brazil Relays](#br-case) [%sep] [TB 5.0.3 Packages Updated, Again](#tb-update-again) [%sep] [Coming Soon: Quick-and-Dirty Reports](#dirty-reports) [%sep] [Thoughts on Reproducible Builds](#repro-builds) [%sep] [It's Up to You](#up-to-you)

__October 2015__

[Updated Tor Browser Packages](#tb-update) [%sep] [The BSD Relay Guides](#relay-guides) [%sep] [Our First Bells](#first-bells) [%sep] [Beyond OS Diversity](#beyond-os) [%sep] [Tor Browser version 5.0.3 for OpenBSD](#tb-5.0.3)

[From the Attic](#attic)

###20160102###

<a id="still-here">__Still Plugging Away__</a> by gman999

We are still moving along.

[Dirty Stats](dirty-stats.html) are still being updated and tweaked. More on in the pipeline.

Attila is starting the next release of Tor Browser.

Remarkably, Tor Browser 5.03 is still functional on OpenBSD/amd64 with #1783 snapshot from December 27th. Snapshots frequently take hard twists and turns, as is to be expected with the development branch of any operating system, so this is something of a surprise. The early releases of __TDP's__ 5.03 faced some hiccups with various changes, but we are trouble-free since.

Stay tuned. We are still very active, even when we are publicly quiet.

###20151216###

<a id="notes-from-the-front">__Notes From The Front__</a> by attila

First: hats off to gman999 for his incessant efforts in getting the content of this site in better shape. I especially applaud this low-tech/no-tech blog layout in MultiMarkdown.

I have been noticeably lacking, but not totally idle.  I've had to take some paying work, which has slowed me down on open source, but my path forward is fairly clear.  My main task is to rework the makefiles (mainly the stuff in Makefile.inc) that comprise the [OpenBSD ports](https://github.com/torbsd/openbsd-ports) for TBB so that they dovetail with and use as much as possible of the Mozillan infrastructure already in the OpenBSD ports tree, much of it due to `landry@`, who has already helped me a couple of times.  I should've done this from the beginning but my head wasn't really on straight when I first started this.  I've been reticent about touching anything that I didn't write, choosing instead to adapt what others have done to get something working. Although this was perhaps effective in the short term if we want this in the tree it has to be consonant with it... in short: if you're serious about contributing to OpenBSD then pick up a shovel and start digging, but politely. I'm sure I can do that so I just have to get to it.

I hope to have a first cut at a rework of the ports, still based on 5.0.3, sometime next week... I don't really celebrate any holidays so I'm hoping to get a lot done while the rest of the world sleeps it off.  Once the makefiles are closer to right I'll work on an update to 5.0.5 (or whatever is current on the 5.0.x branch).  I'm afraid I might miss the next ports lock window because I've taken too long, but oh, well... _que sera sera_.

<a id="pp-announce">__Announcing Porting PETs__</a> by gman999

One of the small projects we have spent some time on recently is <a href="porting-pets.html">Porting PETs</a>. This is an attempt to list the various privacy-enhancing applications and their statuses in the BSD ports.

Most of these ports arose as non-commercial, open source reactions to mainstream applications and services. Some are ported to one BSD or another, others are not.

The list is not exhaustive, but it was certainly exhaustive to create. Updates will happen manually, so <a href="https://github.com/torbsd/torbsd.github.io/issues">diffs</a> are appreciated.

Porting third-party applications is a frequent gateway for BSD users to become developers, this list will be circulated in the relevant BSD channels.


###20151202###

<a id="2016-events">__Thinking About 2016 __</a> by gman999

The BSDCan 2016 [call for papers](https://www.bsdcan.org/2016/papers.php) was issued yesterday, and a __TDP__-related submission was made. BSDCan is likely the largest BSD gathering globally, and an excellent opportunity to speak to *BSD developers and users.

EuroBSDCon 2016 [is tentatively slated for September 2016](https://2016.eurobsdcon.org) in Belgrade, Serbia. It is another significant BSD event, attracting users and developers from Europe and beyond. At a glance, there are only two Tor relays in Serbia, and both are Linux. Beyond Serbia, there are few Tor relays in the Balkan states overall, making EuroBSDCon 2016 a great opportunity to extend not just BSD Tor relays, but *any* Tor relays.

No dates have been set for [AsiaBSDCon](https://2016.asiabsdcon.org), but it's usually in March. Japan is well-wired with inexpensive residential broadband, yet there are only around 50-60 relays in the country. Considering it's a BSD-heavy nation, it's shocking that there are only a handful of *BSD relays. Yet another green field of opportunity.

Stay tuned. Whether we can speak at any of these events will also depend on financial support for __TDP__.

###20151119####

<a id="pets-ports">__PETs Porting Targets__</a> by gman999

After the June 2013 Snowden disclosures, a rush towards developing applications to counter mainstream, closed-source services commenced. Many focuse on Debian Linux as a development platform, but aim at more widely used Windows, OSX, iOS and Android user-base. Beyond client applications, there are also network-based servers and services seeking to provide privacy and anonymity.

The term "PETs" refers to privacy-enhancing technologies, and in this case, we use it as a catch-all for these server and client solutions.

Some of these projects have been ported to one or more BSD.  Others have not. On that note, we began a [list of applications and their status as BSD ports in the main BSD operating systems](porting-pets.html). We encourage feedback on this list, and also investigations into porting these applications. Some of well-worth reviewing and considering; others have ceased development or are broken beyond resurrection. Others just need some reworking towards sanity, as one will notice that ubiquitous build dependency [bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash).

It's a call for engagement to the *BSD community.  Bring your sane, portable development approaches, your intransigent working and reworking of Makefiles, your austere mentality. This is an opportunity to improve applications whose user base might be someone whose life depends on it.

###20151112###

<a id="br-case">__The Case of Brazil Relays__</a> by gman999

Just a short note about the Brazil relays implemented after [BSDCon Brasil](http://2015.bsdcon.com.br). Before the early October conference, it seems there was only one public Tor relay. After the event, there are up to five or six relays maintained by two separate individuals. It's understood that some bridges also joined the Tor network also, but we don't have any direct evidence.

It's not an enormous leap in relay numbers for Brazil, but adding a handful of relays to a country that only had around 20 is significant. More importantly, it seems that the new BSD relays contribute a decent amount of bandwidth.

However, there is a discrepancy between the "Tor Status" data provided by [https://torstatus.blutmagie.de](https://torstatus.blutmagie.de) and [https://torstatus.rueckgr.at](https://torstatus.rueckgr.at). Part of this might be answered by the fact that both are statically updating at different intervals. Olaf Selke of BlutMagie.de, also notes that the "observed bandwidth" numbers are diffferent since only BlutMagie.de [shows the average bandwidth based on the "extra-info" descriptor](https://lists.torproject.org/pipermail/tor-talk/2015-November/039414.html) while other sites, including Rueckgr.at, display the peak bandwidth.

However, there still seems to be discrepancies beyond the "observed bandwidth" field, which we will look at further in the future. For instance, a bunch of AWS Tor relays appeared on BlutMagie.de the other day and remained for a few days, but never showed up on Rueckgr.at. And more oddly, all the relays quickly remained highest bandwidth providers for a few days, in contrast to the normal trajectory of a relay.

For now, either site is useful for giving a broad picture of the public Tor network. It is true that the Brazil relays look at a lot more significant in terms of observed bandwidth at Rueckgr.at.

###20151111###

<a id="tb-update-again">__TB 5.0.3 Packages Updated, Again__</a> by gman999

The <a href="http://mirrors.nycbug.org/pub/snapshots/packages/amd64">Tor Browser 5.0.3 packages</a> were updated again, due to the need for icu4c version 56.1. Both devel/nspr and textproc/icu4c are updated in the OpenBSD ports tree, and the TB packages have been rebuilt for them. Be sure to make sure packages or ports are updated before installing. If the host is updated, there's no need to use our devel/nspr or textproc/icu4c packages.

This is all a true story of the constant attention necessary to develop sanely on any operating system: develop on the most current version, and look forward to an automated build process for it, but ultimately a stable version is a beautiful thing.

###20151108###

<a id="dirty-reports">__Coming Soon: Quick-and-Dirty Reports__</a> by gman999

This week we'll post "Quick-and-Dirty Reports," providing diversity-related snapshots of the public Tor network. Currently, the five reports are generated manually from the [ruckgr.at Tor Status](https://torstatus.rueckgr.at/) [CSV files](https://torstatus.rueckgr.at/query_export.php/Tor_query_EXPORT.csv), but they are being migrated to SQLite in the future.

A quick sample of the current reports were posted in an [earlier blog entry](#beyond-os).

The only comparable service we know of is the [Tor Metrics site](https://metrics.torproject.org) which has the additional function of providing historical data. Our goal is considerably more mundane, yet also functional.

Nothing ground-breaking or revolutionary about the reports, but we do hope others find them useful, and maybe event extend their use.

###20151104###

<a id="repro-builds">__Thoughts on Reproducible Builds__</a> by gman999

Just a quick link to a pleasantly polemical post from September 19th by [OpenBSD's](http://www.openbsd.org) tedu@ entitled [reproducible builds are a waste of time](http://www.tedunangst.com/flak/post/reproducible-builds-are-a-waste-of-time). There's a follow-up postscript at the end of the post, reacting to a [lobste.rs thread](https://lobste.rs/s/5bbdbo/reproducible_builds_are_a_waste_of_time/).

###20151103###

<a id="up-to-you">__It's Up to You__</a> by gman999

Since we launched __TDP__, two of us spend a lot of time, energy and resources getting the various projects designed and implemented.

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
