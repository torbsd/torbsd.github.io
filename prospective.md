Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman999
Editors: attila
Data: 2016-10-31
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

### TDP List of Current and Potential Projects ###

We have grouped the various work we wish to do into several
areas: [development](#development), [documentation](#documentation),
[events](#events), [research](#research), [infrastructure](#infrastructure),
and [advocacy/publicity](#advocacy).

<a id="development">__DEVELOPMENT__</a>

#### [Tor Browser for OpenBSD](https://github.com/torbsd/openbsd-ports/) ####

A port of TB enabling easier porting to other non-WinMacLin systems that
support the POSIX standard.

Currently at 25 releases, looking for acceptance in the OpenBSD ports
system.  Have begun the process of pushing patches upstream to aid in
other porting efforts _c.f._ [tor ticket 20497](https://trac.torproject.org/projects/tor/ticket/20497).

We are committed to continuing to ensure the OpenBSD community can use
TBB.  Our preferred method for accomplishing this is getting it into
the official ports tree, where we will maintain it.

An OpenBSD Tor Browser adds to Tor client diversity, engaging a
security-conscious group of end-users.  It also adds relay diversity
because all TBB users are also de-facto relay operators while they're
running TBB.

Future work:

* Pluggable Transports: current porting effort focused on the core of TBB: tor-browser and the five key browser extensions.  Next step is to port Pluggable Transports;
* Automation of various aspects of the process of maintaining the TBB ports so we can shorten turnaround time for new releases;
* Purchase of hardware to ease in keeping ports up to date and to help with other PETs-related porting efforts to the BSDs.

#### OpenBSD Drivers for USB TRNGs ####

We have already produced a driver for the [Alea](https://www.araneus.fi/products/alea2/en/) and had it accepted into the OpenBSD source tree.  As a result of doing this work we have now received donations of two other USB TRNG devices: an [FST-01](wiki.seeedstudio.com/wiki/FST-01) and a [TrueRNG](http://ubld.it/products/truerng-hardware-random-number-generator/).  We will write drivers for them and get them accepted into the tree.  It would also be worth investigating getting the OpenBSD USB TRNG drivers ported to other BSDs.  FreeBSD would be a good first choice.

#### Other PETs-related Ports ####

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

Starting from the __TDP__ OpenBSD port of Tor Browser, FreeBSD should be a relatively easier porting target.  Currently in planning phase.

#### Porting OpenBSD's [signify](http://man.openbsd.org/signify) to other OSs ####

As a single-purpose / small-footprint alternative to the complexity of
GnuPG for the purposes of signing and verifying digital signatures.
Used by the OpenBSD packaging system and release engineering process.

#### tor-alpha packages for OpenBSD ####

OpenBSD only allows stable applications in its port system, which the Tor Project's alpha releases more frequently address mitigation against evolving adversaries and threat models.  __TDP__ would like to investigate the idea of proposing a port that tracks tor's bleeding edge.  The preferred outcome would be to have such a port accepted into the ports tree; there is some small precedent for this despite the norm, e.g. both current Mozilla Firefox and ESR are in the ports tree.  If we failed in convincing the community to accept this our fallback would be to produce and sign our own packages of alpha-release tor for OpenBSD.

<a id="documentation">__DOCUMENTATION__</a>

#### Tor relay configuration guides ####

We have produced and continue to maintain guides for configuring Tor
relays on both [FreeBSD](fbsd-relays.html) and
[OpenBSD](obsd-relays.html).  We would like to expand these and
produce translations in other languages.

<a id="events">__EVENTS__</a>

#### Internal TDP physical meeting ####

George and Sean would benefit from a physical meeting, having
accomplished everything thusfar over the Internet.  This would require
covering travel costs.

#### Upcoming Conferences/Summits ####

* CCC in Hamburg, December 2016;
* TDP NYC public meeting with lots of cosponsors;
* IFF in Valencia, March 2017;
* Tor Summit in Amsterdman, March 2017;
* AsiaBSDCon (TBD);
* EuroBSDCon in Paris, September 2017.

<a id="research">__RESEARCH__</a>

George attended the Tor developer summit in Seattle (September, 2016).
One subject raised at the meeting was the authoring of a Tor diversity
white paper focused on various metrics of diversity: OS, geography,
architecture, Autonomous System, _etc._ We are interested in pursuing
this with the goal of publishing in a PETs-related conference and/or
journal.

<a id="infrastructure">__INFRASTRUCTURE__</a>

For __TDP__ to single-handedly run a lot of *BSD Tor relays would replace the operating system monoculture problem with a monoculture of relay operators. Therefore this list is limited as __TDP__ already operates high-bandwidth Tor relays.

* NYI relays: take NYI up on their offer to provision and host two high-capacity Tor relays near the core of the Internet.  We would configure, run and maintain them;
* OpenBSD armv7 relay network: continue our work on bootable flash images based on OpenBSD that work on SoC-style computers (BeagleBone, RasPI, _etc_.);
* Approach groups that run Tor exit relays that might be interested in increasing the diversity of the Tor ecosystem by adding an additional relay that runs BSD Unix.

<a id="advocacy">__ADVOCACY & PUBLICITY__</a>

* Open letter to BSD firms to run relays;
* Handout fliers at conferences;
* Get business cards and stickers made;
* Produce infographics of TDP->PETs Ecosystem to show people where they can help.

{{footer.md}}
