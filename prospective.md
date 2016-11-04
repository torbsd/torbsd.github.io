Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman999
Editors: attila
Data: 2016-10-31
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

### TDP List of Current and Potential Projects ###

__TDP__'s current focus is primarily on porting Tor Browser to OpenBSD, presentations at various events and conferences, besides finding software bugs and operating long-term relays and bridges. The listed projects are at various stages of development, from planning to the early stages of implementation. Funding would provide the necessary resources to dedicate the time to continue the projects, and bring more to fruition.

__TDP's__ work can be divided into several broad categories:

* [development](#development)
* [documentation](#documentation)
* [events](#events)
* [research](#research)
* [infrastructure](#infrastructure)
* [advocacy/publicity](#advocacy)

<a id="development">__DEVELOPMENT__</a>

#### [Tor Browser for OpenBSD](https://github.com/torbsd/openbsd-ports/) ####

A port of Tor Browser (TBB) enabling easier porting to other
POSIX-based systems.

__TDP__ has released multiple sets of packages over the previous year for
testers from around the Internet to try.  Began the process of pushing patches
upstream to aid in other porting efforts _c.f._
[tor ticket 20497](https://trac.torproject.org/projects/tor/ticket/20497).

__TDP__ is committed to continuing to ensure the OpenBSD community can use
TBB. Our preferred method for accomplishing this is getting it into the
official ports tree. Once there, __TDP__ will continue maintainership, but
acceptance into the OpenBSD ports tree enables development input from the broader OpenBSD community.

An OpenBSD TBB adds to Tor client diversity, engaging a
security-conscious group of end-users.  It also can add relay diversity
because all TBB users are also de-facto relay operators while they're
running TBB.

Future work:

* Pluggable Transports: current porting effort focused on the core of TBB: tor-browser and the five key browser extensions.  Next step is to port Pluggable Transports;
* Automation of various aspects of the process of maintaining the TBB ports to shorten turnaround time for new releases;
* Purchase of hardware to ease in keeping ports up to date and to help with other privacy-enhancing technology-related (PETs) porting efforts to the BSDs.

#### OpenBSD Drivers for USB TRNGs ####

__TDP__ has already produced a driver for the [Alea](https://www.araneus.fi/products/alea2/en/) and had it accepted into the OpenBSD source tree.  As a result of doing this work __TDP__ has now received donations of two other USB TRNG devices: an [FST-01](wiki.seeedstudio.com/wiki/FST-01) and a [TrueRNG](http://ubld.it/products/truerng-hardware-random-number-generator/).  __TDP__ will write drivers for them and get them accepted into the tree.  It would also be worth investigating getting the OpenBSD USB TRNG drivers ported to other BSDs, with FreeBSD as a likely first choice.

#### [Other PETs-related Ports](porting-pets.html) ####

Various ideas on the table for porting targets to OpenBSD to start
with include:

* Signal
* TorBirdy
* FreeNet
* OnionCat
* OnionShare
* TorMessenger
* BitMessage

#### Tor Browser port to FreeBSD ####

Starting from the __TDP__ OpenBSD port of Tor Browser, FreeBSD should be a relatively easier porting target.  Currently in planning phase, with interest expressed by several developers, including one from [HardenedBSD](https://wwww.hardenedbsd.org/)

#### Porting OpenBSD's [signify](http://man.openbsd.org/signify) to other OSs ####

As a single-purpose/small-footprint alternative to the complexity of
GnuPG for the purposes of signing and verifying digital signatures.
Used by the OpenBSD packaging system and release engineering process.

__TDP__ is also considering an open source graphical user interface for signify, to increase usability for less technical users.

#### tor-alpha packages for OpenBSD ####

OpenBSD only allows stable applications in its port system. Meanwhile the Tor Project's alpha versions are released frequently, and address mitigation against rapidly evolving adversaries and threat models.  __TDP__ would like to investigate the idea of proposing a port that tracks Tor's bleeding edge.  The preferred outcome would be to have such a port accepted into the ports tree; there is some small precedent for this despite the norm, e.g. both current Mozilla Firefox and ESR are in the ports tree.  If __TDP__ fails in convincing the community to accept this our fallback would be to produce and sign our own packages of alpha-release Tor for OpenBSD.

<a id="documentation">__DOCUMENTATION__</a>

#### [Tor relay configuration guides](relay-guides.html) ####

__TDP__ initiated "simple English" guides for configuring Tor relays on
both [FreeBSD](fbsd-relays.html) and [OpenBSD](obsd-relays.html).  TDP
intends to complete these and produce translations in other languages.

A discussion at the September 2016 Tor Summit came to the consensus that these relay guides could play a pivotal role in enlisting more BSD relay operators.

<a id="events">__EVENTS__</a>

#### Internal TDP physical meeting ####

One half of  __TDP__ is located in New York City, the other half is in Mexico. They have collaborated on different levels for over a decade, but have never met face-to-face. A physical meeting at a half-way point would be enormously beneficial to pushing the various __TDP__ projects forward, in addition to planning future projects.

#### Upcoming Conferences/Summits ####

All of these events are excellent platforms for __TDP__ presentations and the distribution of publicity about the project. In addition to presentations, __TDP__ is looking to begin conducting more birds-of-feather sessions specifically aimed at current and prospective BSD Tor relays operators.

* CCC in Hamburg, December 2016;
* IFF in Valencia, March 2017;
* Tor Summit in Amsterdman, March 2017;
* AsiaBSDCon (TBD);
* EuroBSDCon in Paris, September 2017.

Additionally, __TDP__ is looking to conduct a public meeting in New York City. With a large network in the NYC open source and privacy communities, a public meeting could enlist a number of open source, NGO and corporate co-sponsors. The __TDP__ member in Mexico would be involved on a remote video link.


<a id="research">__RESEARCH__</a>

George attended the Tor developer summit in Seattle (September, 2016).
One subject raised at the meeting was the authoring of a Tor diversity
white paper focused on various metrics of diversity: OS, geography,
architecture, Autonomous System, _etc._  __TDP__ is interested in pursuing
this with the goal of publishing in a PETs-related conference and/or
journal.

<a id="infrastructure">__INFRASTRUCTURE__</a>

For __TDP__ to single-handedly run a lot of *BSD Tor relays would replace the operating system monoculture problem with a monoculture of relay operators. Therefore this list is limited as __TDP__ already operates high-bandwidth Tor relays.

* New York Internet relays: [NYI](https://nyi.net/) offered to provision and host two high-capacity Tor relays near the core of the Internet.  __TDP__ would configure the relays and maintain access to them; NYI staff would be enlisted to operate them;
* OpenBSD armv7 relay network: continue our work on bootable flash images based on OpenBSD that work on SoC-style computers (BeagleBone, RasPI, _etc_.);
* Running an [OpenBSD/macppc](https://www.openbsd.org/macppc.html) relay to enhance bug-finding for __TDP__ and the [BSD Buildbot](https://buildbot.pixelminers.net/) on a non-standard hardware platform for Tor;

<a id="advocacy">__ADVOCACY & PUBLICITY__</a>

* [Open letter to BSD firms to run relays](https://torbsd.github.io/corp-relays.html): There are many large corporations that rely on BSD code and infrastructure, including WhatsApp, Juniper and NetFlix. Following Mozilla's lead in running Tor relays as a business entity, __TDP__ would query these firms through our wide network of contacts and work at convincing them to run relays themselves.
* Publicity materials for conferences, including a generic __TDP__ business card and stickers: The great weakness of __TDP__ since inception is publicity. The focus has been exclusively on development and conference presentations. With some publicity, __TDP__ could have a significant impact on the BSD community as the target audience.

{{footer.md}}
