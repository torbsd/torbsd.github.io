Title: Tor BSD Diversity Project Resources
CSS: torbsd.css
Author: gman
Editors: attila
Date: 20150509
Note: These lines at the top are multimarkdown metadata; leave them.

{{header.md}}

## Resources ##

This page collects links and information relevant to TDP.  We
apologize for any omissions and welcome ideas from others.

### The BSDs and Related Projects ###

* [FreeBSD](https://www.freebsd.org): performance, cutting-edge networking and filesystem features

* [NetBSD](http://www.netbsd.org): portability, stability, support for many devices

* [OpenBSD](http://www.openbsd.org): security, correctness, standards-compliance, leadership in addressing serious issues confronting the computing ecosystem

* [DragonFly BSD](http://www.dragonflybsd.org): multiprocessing, alternative approaches to filesystem design

* [OpenSSH](http://www.openssh.com): the defacto standard on the Internet for secure command-line access, portable and lightweight VPN features, constant advances in crypto, security

* [LibreSSL](http://www.libressl.org): a renewed focus on simplicity, correctness and sustainability/maintainability for TLS

* [FreeNAS](https://www.freenas.org): FreeBSD-based networked-attached storage system

* [OPNSense firewall](https://opnsense.org): easy-to-use web interface to OpenBSD's packet filter (pf) on a FreeBSD base


### BSDs and Tor ###

* [Tor-BSD Mailing List](http://lists.nycbug.org/mailman/listinfo/tor-bsd) hosted by the [New York City *BSD User Group](http://www.nycbug.org)

* [An Unofficial BSD Buildbot for the Tor Project](http://81.7.14.172)
  A distributed test build system for finding problems with BSD Tor builds.

* Slides for ["The LibTech Scene and the BSD Projects After Snowden"](http://twvihadsu5oznuux.onion/)
  Birds-of-a-Feather sessions at vBSDCon in fall 2013 and NYCBSDCon 2014.

* Christian Bruffer at [MeetBSD 2007 presentation on FreeBSD, Protecting Privacy with Tor](https://www.youtube.com/watch?v=OwBh8ro7xHQ)

* [Tor Network Status](http://torstatus.blutmagie.de)
  A useful overview of the current public Tor relays, with a query function to check relay numbers by operating system.

* [Tor Metrics](http://metrics.torproject.org)
  More useful graphs about the Tor network, including [platform usage](https://metrics.torproject.org/platforms.html).

* [attila's blog](http://trac.haqistan.net)

### Relevant BSD Bits ###

* [Theo de Raadt slides on arc4random](http://www.openbsd.org/papers/hackfest2014-arc4random/index.html)

* [Kode Vicious' Column from ACM's Queue Magazine](https://queue.acm.org/listing.cfm?typefilter=Kodevicious&sort=publication_date&order=desc&qc_type=Kodevicious&article_type=&item_topic=all&filter_type=topic&page_title=Kode%20Vicious&filter=all)

* [Ted Unangst post on OpenBSD-misc "Improving Browser Security"](https://marc.info/?l=openbsd-misc&m=142523501726732)

* [Theo de Raadt slides on "Exploit Mitigation Techniques: An Update After 10 Years"](http://www.openbsd.org/papers/ru13-deraadt/)

* [Ted Unangst on "LibreSSL: More than 30 Days Late"](http://www.openbsd.org/papers/eurobsdcon2014-libressl.html)


### The Danger of Monocultures in Technology ###

[CyberInsecurity: The Cost of Monopoly. How the Dominance of Microsoft's Products Pose a Risk to Security](http://www.ccianet.org/papers/cybersecurity.pdf)
:    An explosive paper arguing Microsoft's desktop monopoly is a critical weakness in global infrastructure. The paper prompted the firing of one of the authors [Dan Geer](https://en.wikipedia.org/wiki/Dan_Geer) from @Stake (later acquired by Symantec) in 2003.

[Monoculture on the Back of the Envelope](https://www.usenix.org/legacy/publiccations/login/2005-12/openpds/geer.pdf)
:    A short piece by Dan Geer from USENIX's ;login magazine two years later.

[Schneier-Ranum Face-Off on the dangers of a software monoculture](http://searchsecurity.techtarget.com/magazineContent/Schneier-Ranum-Face-Off-on-the-dangers-of-a-software-monoculture)
:    In 2010, Bruce Schneier and Marcus Ranum debate the issue. Note that a login is necessary to access the piece.

[Bruce Schneier's blog entry on "Software Monoculture"](https://www.schneier.com/blog/archives/2010/12/software_monocu.html)
:    Bruce Schneier illustrates some of the weaknesses in the "monoculture is insecurity" argument. First, even seemingly identical computer hosts have some diversity in terms of networks, software, and so on. Second, there are significant costs to diversity. [Verisign diversified its infrastructure](http://www.eweek.com/enterprise-apps/verisign-embraces-open-source-freebsd-for-diversity) with three operating systems, including FreeBSD, and they incur significant costs in doing so. Finally, diversity does not mean two's and three's of each, but hundreds or thousands to robustly mitigate system-wide disasters.

[Risks of Monoculture Revisited](https://blogs.microsoft.com/cybertrust/2010/12/03/risks-of-monoculture-revisited/)
:    After the followup debate, the Microsoft Principal Cybersecurity Strategist concludes that monocultures aren't really that bad after all. Desktop diversity seems to have established with the advent of Android and Ubuntu, and the expansion of Apple products, so the relevance of the Windows desktop monoculture may have decreased.

### Related and Useful Projects ###

* [flashrd](http://www.nmedia.net/flashrd)
  Building small OpenBSD i386 and amd64 embedded systems. An ideal platform for small Tor relays and bridges.

* [FreeBSD's Crochet](https://github.com/freebsd/crochet)
  A tool for building FreeBSD images for embedded systems on a variety of architectures, including contemporary armv6 and armv7 hardware such as Raspberry Pis and BeagleBones. 


### Chatter About __TDP__ ###

* [__TDP__ prematurely announced on the Tor-talk mailing list](https://lists.torproject.org/pipermail/tor-talk/2015-April/037649.html)

* [Followed up by a headline on BSDNow.tv](http://www.bsdnow.tv/episodes/2015_05_06-below_the_clouds)

* [Reddit on __TDP__](https://www.reddit.com/r/linux/comments/356iyy/torbsd_diversity_project_help_move_tor_nodes_from/):
  Before we publicly announced, a __TDP__ Reddit thread. Very appreciated, but one important point of clarification: we are not interested in having Linux relays moved to BSD. If someone runs a relay, they should use the operating system they are most comfortable with. __TDP__ is about affecting the BSD community and not converting anyone __to__ the BSDs. Another quick comment is that we strongly agree in the larger monoculture problem. Ideal diversity would encompass a variety of applications and hardware, and that applies to Tor as much as anything. But there's a major issue to consider, and that's interoperability. There needs to be some agreement on protocols before there can be any routing or communications in general. If one mail server only talks SMTP and the other only UUCP, email routing does not happen.

### Materials ###

* A one-page [informational flier](materials/flier-bsd.html) providing an overview of __TDP__ for a BSD audience.  It's a call for engagement without explaining the case for using the *BSDs. The flier should print out on a single page.

{{footer.md}}
