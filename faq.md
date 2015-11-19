Title: TDP : FAQ
CSS: torbsd.css
Author: gman999
Editors: attila
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.

{{header.md}}

## __TDP__ Frequently Asked Questions ##

Below are some typical questions about __Tor BSD Diversity Project__.
Feel free to [contact us](contact.html) for questions or comments not
mentioned. Sooner rather than later this FAQ will need to be
categorized for clarity.

## "How can I contribute to __TDP__?" ##

To answer this question, we have to start with your particular skills.

__General__
:    Review our web site and documentation, and let us know if something is unclear or unstated. If you attend any BSD or open source events, print out some copies of the __TDP__ informational flier. Join the [Tor-BSD mailing list](http://lists.nycbug.org/mailman/listinfo/tor-bsd).

__Users__
:    As a BSD Tor Browser (TB) is available, start using and testing it on OpenBSD. Submit comments and questions.

__Developers__
:    Clone our repositories, build and break the software, submit tickets and patches.

__Tor BSD Relay Operators/Admins__
:    Run a BSD relay, use and review the relay guides, contribute input. Enlist your relay(s) the (unofficial) [BSD Buildbot](http://buildbox.pixelminers.net).

## "If __TDP__ is concerned about operating system diversity, why does it just focus on BSD Systems, and not other operating systems such as Illuminos?" ##

__TDP__ focuses on the BSDs due to our background and experience. It
is critical to note that our code and materials respect established
standards, and everything original we produce is under the
[ISC license](https://duckduckgo.com/l/?kh=-1&uddg=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FISC_license), a simplified version of the BSD 2-clause
license. __TDP__ is commited to portability and interoperability. We
are building an open ecosystem.

In other words, if someone wanted to take __TDP__ code and materials
and spawn a similar project based on another operating system, say
Plan 9, with the same eye on Tor diversity, __TDP's__ groundwork
should make that task easier.  We are also open to hosting ports
work to other BSDs under cover of our GitHub account if e.g.,
some enterprising FreeBSD ports person wanted to work on it.

It is important to note that unlike the GNU/Linux distributions, the
BSD projects, [FreeBSD](http://www.freebsd.org),
[NetBSD](http://www.netbsd.org), [OpenBSD](http://www.openbsd.org) and
[DragonFly BSD](http://www.dragonflybsd.org), are distinct operating
systems. While the Linux distributions share a reasonably common
kernel, each BSD project maintains its own kernel and userland, and
determines the third-party applications available. Each BSD project
evolved independently even though each originates with 386BSD Unix
from the early 1990s, or
[earlier, depending on how it's measured](http://mirrors.nycbug.org/pub/The_Unix_Archive/). There is and continues to be a good deal of code-sharing between the
projects, including many kernel features and device drivers.  However
over time, the major BSDs have chosen different focuses causing whole
aspects of their systems to diverge. For instance, each of the BSDs
has ported OpenBSD's packet filter. Yet in the 1990's, all the BSDs
used ipf by default. FreeBSD continues to provide ipfw, and NetBSD
developed npf, another firewall alternative.

The uniting aspects for all the BSDs is the preference for the
simplicity of BSD/ISC/MIT licensing and adherence to the guiding
tenets of classic Unix, such as portability, modularity and
interoperability.

## "Diversity?  It's all written in C. The Linux distros and some of the BSDs have a lot of common pieces like GCC, OpenSSL, etc." ##

Ultimately diversity *does* mean asking much broader questions. More
diversity in operating systems, hardware, SSL versions, geographical
locations, the list could continue endlessly. It's the right question
to ask, but __TDP__ is only beginning to provide a small piece of a
response.

## What about other types of diversity, such as geographical? ##

[Here is a list of country codes that do not have any public Tor relays](https://torbsd.github.io/tor-less-ccs.txt). Please feel free to enlist any technically capable friends or family to start running Tor relays there.

## "How many Tor relays are running a BSD?" ##

The number and percentage of public Tor relays fluctuates, and this
applies to BSD relays as well. As of October 2015, the percentage is
just under 4.5%. Web sites such as [BlutMagie](http://torstatus.blutmagie.de)
provide a full list of public relays with a query function to determine
the exact current number among other data.

[Tor Metrics](https://metrics.torproject.org/platforms.html) provides
a clear graph that strikingly, and disturbingly in our opinions,
illustrates the monoculture in relay platforms.

## "Doesn't the [Tor web site download page](https://www.torproject.org/download/download-easy.html.en) list a Tor Browser Bundle for GNU/Linux, that also supports 'Unix, BSD'?" ##

That is true, but unfortunately inaccurate. The current Tor download
does not work on any of the BSDs for a variety of reasons.

## "I run a Tor relay on such and such Linux distribution. How hard would it be to run a BSD relay for me?" ##

In reference to [this Reddit thread](https://www.reddit.com/r/linux/comments/356iyy/torbsd_diversity_project_help_move_tor_nodes_from/), anyone technical enough to run a robust and secure Tor relay should stick with the operating system they are most comfortable with. Nothing is more dangerous than someone running a public anonymity server on an unfamiliar operating system. __We are not interested in "moving Tor nodes from Linux to BSD."__ We want *more* nodes, preferably by increasing the number of BSD nodes faster, not by converting anyone to anything.

The best recent example of what TDP achieved is in Brazil. Before [BSDCon Brasil] (http://2015.bsdcon.com.br), there were 20 or so Tor relays, all Linux except for two Windows relays. After our presentation and discussions, there are around 5-9 operational relays, accounting for up to a third of observed bandwidth provided on the Tor network. The new relay administrators were BSD users with access to the necessary infrastructure, and their relays enhanced the Tor network.

To a large extent, __TDP's__ target audience is those already familiar
with the BSDs. Significant numbers in the BSD community have access to
data center space for running relays, are developers who hack code,
etc. It's about getting the BSD community engaged into the Tor scene,
not so much vice-versa.

For those interested in running a BSD relay, command-line interactions
are similar enough to the Linux distros. While not the default shell
on any BSD, [bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) is available as a port and package on all of them, although shells such as tcsh and ksh are more than capable in themselves. As a matter of fact, migrating from bash might [decrease security patching time](https://web.nvd.nist.gov/view/vuln/search-results?query=bash&search_type=all&cves=on) compared to [tcsh](https://web.nvd.nist.gov/view/vuln/search-results?query=tcsh&search_type=all&cves=on) or even
[ancient, non-OpenBSD versions of ksh](https://web.nvd.nist.gov/view/vuln/search-results?query=ksh&search_type=all&cves=on).

The BSD install processes vary, but after a few tries, it's hardly a
difficult task. For the BSDs, there is no assumption that graphical
installers are "easier" than non-graphical ones.

Installing a package isn't difficult either. To install the rsync
package on FreeBSD, for instance, the user just has to type "pkg
install rsync."  For OpenBSD, it's just "pkg_add rsync." NetBSD's
[pkgsrc](http://www.netbsd.org/docs/pkgsrc/) also maintains simple
syntax, and happens to to be portable to a variety of other operating systems.

The important principle is to minimize the operating system footprint,
including daemons listening, applications installed, etc. If it's a
Tor relay, it should not be multi-user system, and not a file server,
web server, etc. Use the default shell, use the base utilities as
opposed to third-party applications, keep the attack surface
minimized. On that final point, virtualization tends to __increase__ that attack
surface, not decrease it.

With a little time and patience, running a BSD relay shouldn't be an
insurmoutable task for any Linux user beyond those brand-new to
computing. For someone comfortable in the shell, editing files, and so
on, it is simple enough.

##"Why did Tor Browser Bundle work start with OpenBSD? On the desktop at least, isn't FreeBSD more popular?"##

FreeBSD may very well be more widely used, but operating system usage
statistics are wildly untrustworthy.

While all the BSDs aim to be standards compliant, OpenBSD is the most
orthodox in this respect. Therefore, if software runs on OpenBSD and
is accepted into their base or ports trees, porting that software to
another POSIX-compliant operating system is easier. There are
popular examples to mention, such as OpenSSH, arc4random, OpenNTPD and
for those who only read Slashdot.org over the past year, LibreSSL is
quickly gaining momentum as another piece of easily portable code from
the OpenBSD project.

With a production-quality OpenBSD Tor Browser, porting to other
BSDs or any other POSIX-based systems should be relatively trivial
task.

## ["Can you please build Tor Browser not only for -current but also for stable versions like 5.7 and 5.8] (https://lists.torproject.org/pipermail/tor-dev/2015-October/009810.html) on OpenBSD? ##

New OpenBSD ports are [developed against OpenBSD -current] (http://www.openbsd.org/faq/ports/testing.html). To maintain versions for anything outside of -current at this point is beyond our resources, unfortunately.

## "Are you associated with the Tor Project?" ##

__TDP__ is __not__ an official project of Tor. We are merely long-time Tor users and relay operators whose preferred platform is BSD Unix. We do maintain regular contact with Tor Project staff.

## "What do you hope to accomplish with porting the Tor Browser Bundle to OpenBSD?" ##

First, some definitions.  There are several different but related
software packages that are often confused or called by the same name:

__Tor__
:    This is the daemon that speaks the Tor protocols and connects your
computer to the Tor anonymity network.  It has no user interface other
than the command-line and is configured using a plain old text file as per
Unix custom.  It can be configured to run in a variety of modes and
can be used to run a relay, a bridge, an exit node, hidden services
or all of the above.  Naive users might come to the conclusion that
all you need to be private on the Internet is to fire up the Tor daemon
and configure your normal web browser to proxy traffic via tor -
this is __incorrect__ and in fact can make it easy for an attacker to
deanonymize your traffic (and, implicitly, you).

__Tor Browser__
:    A fork of the [Firefox Extended Support Release (ESR)](https://www.mozilla.org/en-US/firefox/organizations/):  ESR is "... intended for groups who deploy and maintain the desktop environment in large organizations such as universities and other schools, county or city governments and businesses."  The Tor Project based their browser on ESR, but it is heavily modified, including over [500 patches](http://bits.haqistan.net/~attila/mozilla-esr31.4.0-torbrowser-4.5_patches/) to the ESR base.  These patches close holes and fix problems in Firefox ESR that can lead to anonymity leaks and privacy breaches, among other things.  Note that by itself the Tor Browser will also not necessarily protect your privacy or
anonymity even if you build it and configure it to proxy all traffic over Tor.

__Tor Browser Bundle (TBB)__
:    An operating-system-specific "bundle" which packages up Tor, the Tor Browser, several Firefox add-ons crucial to the proper operation of the Tor Browser that are not included in it, other third-party Firefox add-ons that are also used outside of Tor which are bundled together because of the additional protections they provide and many external programs and configuration files used by both these add-ons and the Pluggable Transports components (which, itself, includes at least on additional Firefox add-on).  The bundle is intended to be installed under an individual user's directory and does not use or rely e.g. any other version of the Tor server software or Firefox installed on the computer.

Users with no deep technical knowledge might refer to the TBB as
"Tor", since from their point of view it is: if you install the TBB on
a supported operating system and double click on the resulting icon
you are "using Tor" in some generic sense.

Nonetheless this is not exactly accurate.  If you are using the TBB
you are not only using their fork of Firefox ESR (as opposed to
whatever other version of Firefox you might have installed), you are
also using the version of the tor daemon that comes with the TBB (as
opposed to whatever other version you might have installed), the
firefox add-ons that ensure your web traffic is proxied via Tor
correctly (which come with TBB, not Tor Browser), other add-ons that
are recommended to ensure safe browsing over Tor (as opposed to
e.g. whatever version of the `noscript` Firefox add-on you might have
installed otherwise) and, potentially, many other small programs that
implement the different facets of the Pluggable Transports concept.

All of these things go together, although not all of them are used by
all TBB users.  Many users never touch Pluggable Transports although
for some Tor would be completely unusable without it.  For instance,
the `meek` Pluggable Transport components allow potential Tor users
behind the Great Firewall of China and other, similar systems to get
around governmental blocks to using Tor.

The TDP is porting the entire TBB to OpenBSD, not just Tor Browser.
Our goal is to provide users of OpenBSD (for starters) with a complete
set of components equivalent to TBB that provides all of the anonymity
and privacy under OpenBSD that TBB gives users under Linux, OSX and
Windows.  This means not only the Tor Browser, but all of the add-ons
that are required for it to function as designed and all of the
external components that make up Pluggable Transports.

## "What are the hurdles to porting the Tor Browser Bundle to OpenBSD?" ##

[This blog post](http://trac.haqistan.net/blog/adventures-ports-tor-browser)
by one of the TDP project members summarized many of the issues
and problems presented by the TBB in the context of OpenBSD, but
for the sake of completeness we will summarize here.

At the risk of putting words in other peoples' mouths, we can say with
some authority that many current trends in software packaging and
development leave a bad taste in the mouths of BSD users.  Most of us
would prefer that third-party installed on our machines used OpenBSD's
native packaging system to produce signed packages with proper
dependency meta-data in them for all of the components of any
multi-component system.  The trend towards software that phones home
to check for updates or, worse, which automatically updates itself is
also viewed with some alarm: such software certainly won't be using
the native OpenBSD mechanisms to do this phoning home or updating,
since that's not how things are done in OpenBSD ports.

Instead we would prefer to update our software by installing packages
based on ports created by OpenBSD ports maintainers after they've
properly vetted things, sorted out issues with dependencies,
etc... Philosophically the idea is that the standard set of packaged
3rd party software available is something that organically belongs
with the operating system, and that the release cycle of the OS
naturally drives forward subsequent releases of the packaged
software. When there are critical bug fixes or security patches then,
again, the mechanism native to the OS for dealing with them should be
used.  This is in line with the broader BSD philosophy that the
operating system, C runtime library, compilers and toolchain used to
produce them and third-party packages based on all of the above form
an organic whole, not a pile of disconnected components.  The core of
any of the BSDs is not released or developed piece-meal.

All of the BSDs have settled on a model where third-party packages can
be posed as "ports".  Although the ports systems on the various BSDs
differ substantially, they have a common ancestor (FreeBSD's original
ports system) and a common goal: create a sane, well-documented
mechanism that (nearly) any user can use to produce a native port of a
piece of open-source software.

## "Will the Tor Browser Bundle be in the OpenBSD ports tree and available as a package?" ##

This is the end-goal of the TBB work.

## "What is the status of the Tor Browser Bundle (TBB) Porting Effort?" ##

__18 MAY 2015__: The only component of the TBB that is not finished
is [Pluggable Transports](https://www.torproject.org/docs/pluggable-transports.html), which comprises several subcomponents and presents a few
packaging challenges.

As for the rest our status is more or less still as described
[in this blog post](https://trac.haqistan.net/blog/tor-browser-ports-progress):
the OpenBSD ports are for version 4.0.8 of the TBB and include the Tor
Browser itself, the torbutton and tor-launcher add-ons that are
required for proper functioning of Tor Browser and the NoScript and
HTTPS-Everywhere add-ons that are also used outside of Tor Browser but
which are packaged with TBB.  The exact NoScript configuration tweaks
present in the TBB release are still not reflected in our ports.

We are working on moving to the latest release (4.5.1 as of this
writing).  Beyond that, the Pluggable Transport components must be
finished and then we'll have a complete set of TBB ports.  We are not
committing to dates for any of these milestones just yet but most of
the hard work for everything but PT has already been done.

## "Beyond porting the Tor Browser Bundle to OpenBSD and the relay guides, what other activities does __TDP__ look to conduct?" ##

We have a long list of potential projects, some of which commenced years ago. This is a list in flux, and we only consider it a loose guide.

__A Presence at BSD Events__ There are a number of BSD conferences that take place around the globe, such as [BSDCan in Ottawa, Canada](http://www.bsdcan.org), [AsiaBSDCon in Tokyo, Japan](http://www.asiabsdcon.org), [EuroBSDCon](http://www.eurobsdcon.org), [MeetBSD in California](http://www.meetbsd.com) and which alternates with [MeetBSD in Polska](http://www.meetbsd.org) and finally [NYCBSDCon in New York City](http://www.nycbsdcon.org). These are opportune places to interact face-to-face with the broader BSD community with presentations and birds-of-a-feather sessions (BoFs). To date, BoFs has been conducted at vBSDCon in the fall of 2013 and NYCBSDCon in February 2014. A very successful [BoF was conducted at](https://www.bsdcan.org/2015/schedule/track/BOF/624.en.html) BSDCan in June 2014. There were around 50 people in the room during this lunchtime session, and many were running Tor relays. Considering just under 300 people registered for BSDCan, this was a huge accomplishment.

__BSD Relay Configuration Video Tutorials__ Written tutorials are a useful medium for assistance in configuring BSD relays. For some, especially groups of people, professionally produced video tutorials are more appropriate.

__Relay Guide Translations__ While English remains the de facto language of technical documentation, it is hardly the only language. We are looking to keep current translations of the 'production' versions of our relay configuration guides online and available. This could also increase the geographical diversity of the Tor network beyond its concentrations in the US, Canada and Europe.

__High-Bandwidth BSD Relays__ An immediate way to diversify available Tor relay bandwidth is to operate several high-bandwidth relays. At a certain moment in May 2015, only two of the top thirty relays, in terms of bandwidth, are __not__ running GNU/Linux. Both are running FreeBSD. Building and maintaining at least two high-bandwidth "bare metal" relays, one running OpenBSD and the other FreeBSD, with a minimum bandwidth of 20Mbps, would change this situation in the short-term. But we don't aim to individually act as a band-aid to the diversity problem. These relays would allow further testing and optimizing of high-bandwidth Tor relays running BSDs, and ideally become a model for others.

__Corporate Tor Relays__ While volunteer relays represent the majority of Tor nodes, we are approaching BSD-using firms to ask about them running high-bandwidth Tor relays on a BSD. Mozilla nows runs several relays as of December 2014. Firms have the staff, hardware and bandwidth to significantly contribute to the Tor network. Additionally, such firms further legitimize Tor and anonymous communications.

__A FreeBSD Port of the Tor Browser Bundle__ After the OpenBSD Tor Browser port is completed, the next client software target would likely be be FreeBSD. Note that PC-BSD's Kris Moore has [created a "Tor-Mode"](http://blog.pcbsd.org/2015/03/a-look-at-the-upcoming-features-for-10-1-2/) for their desktop's browser. 

We have additional ideas in consideration for __TDP__, and will regularly assess and reassess both old and new ones. Ultimately, __TDP__ needs broader BSD community involvement of both users and developers to have the impact we are aiming for.

{{footer.md}}
