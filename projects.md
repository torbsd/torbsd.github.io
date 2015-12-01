Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Data: 2015-10-30
X-Note: These lines at the top are multimarkdown metadata; leave them.


{{header.md}}

##__TDP__ Projects##

__TDP__ focuses on an array of projects which culminate in an effort to diversify the Tor anonymity network with more *BSD Unix engagement. Each item relates to that goal on some level.

Some projects are simple, one-off efforts which require some maintenance, while others are more labor-intensive and driven by upstream development.

###[Tor Browser Porting to OpenBSD](tb-obsd.html)###

Porting [Tor Browser (TB) to OpenBSD](https://github.com/torbsd/openbsd-ports) is our flagship project and demands the most attention. Porting TB requires tracking the upstream Tor Browser, in addition to working the port into a strict OpenBSD ecosystem. We are in some initial discussions to get TB ported to other BSDs.

###[BSD Tor Relay Guides](relay-guides.html)###

It's not rocket science to run a Tor relay on any of the BSDs. But there is some useful utility in providing simple, step-by-step instructions on building a relay. Our initial targets are FreeBSD and OpenBSD, and some interest has been expressed from others to do the same for other BSDs.

###Advocacy and Events###

Predating the birth of __TDP__ by years, advocacy work through events is a central method of engaging the broader *BSD community. Numerous birds-of-a-feather sessions were done, presentations at conferences and more informal meetings with focuses such as "recruiting BSD Tor admins." In 2016, __TDP__ is looking to continue this effort.

Some of the events include:

* October 2015: [BSDCon Brasil presentation](http://2015.bsdcon.com.br/agenda/)

* June 2015: [BSDCan 2015 Birds-of-a-Feather session](http://www.bsdcan.org/2015/schedule/track/BOF/624.en.html)

* February 2014: [NYCBSDCon Lightening session](http://www.nycbsdcon.org) on "The BSDs and the LibTech Scene"

###[BSD Firm Relays](corp-relays.html)###

When Mozilla [announced](https://blog.mozilla.org/it/2015/01/28/deploying-tor-relays/) at the end of 2014 that it would begin running "official" relays, the notion of encouraging BSD-using firms to replicate this effort became obvious. There are many well-known and even more lesser-known firms that relay on the BSDs for their businesses. From Netflix to Juniper, Yahoo to Verisign, the BSDs are a vital element in countless firms. Through the BSD community, __TDP__ believes it can play a role in facilitating these BSD-employing firms to run their own Tor relays, bootstrapping off of their production infrastructures and staffs.

###[Porting Targets for PETs](portings-pets.html)###

Over the past several years, a proliferation of open source applications seek to replace mainstream, proprietary services, with an eye on privacy and/or anonymity. __TDP__ maintains a list of dozens of PETs (privacy enhancing technologies) and their status on each of the BSD porting systems. Some have already been ported to one or more BSDs, others should be considered, while others might require a complete reworking.

###[Quick-and-Dirty Static Reports](dirty-stats.html)###

__TDP's__ focus is Tor diversity, and this project provides the evidence for our case. These statistics, generated from simple shell scripts, illustrate an array of monocultures: in operating systems and the geographical placement of relays and bandwidth. Generated statically from [https://torstatus.blutmagie.de](https://torstatus.blutmagie.de), the reports give a revealing snapshot of weaknesses in the public Tor network.



{{footer.md}}
