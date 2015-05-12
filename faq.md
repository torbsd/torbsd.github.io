Title: TDP Frequently Asked Questions
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.

# __TDP__ Frequently Asked Questions #

Below are some typical questions about __Tor BSD Diversity Project__. Feel free to [contact us](/contact.html) for questions or comments not mentioned. Sooner rather than later this FAQ will need to be categorized for clarity.

## "How can I contribute to __TDP__?" ##

To answer this question, we have to start with your particular skills.

* __General__

Review our web site and documentation, and let us know if something is unclear or unstated. If you attend any BSD or open source events, print out some copies of the __TDP__ informational flier. Join the [Tor-BSD mailing list](http://lists.nycbug.org/mailman/listinfo/tor-bsd).

* __Users__

As a BSD Tor Browser is available, start using and testing it on OpenBSD. Submit comments and questions.

* __Developers__

Clone our repositories, build and break the software, submit tickets and patches.

* __Tor BSD Relay Operators/Admins__

Run a BSD relay, use and review the relay guides, contribute input. Enlist your relay(s) the (unofficial) [BSD Buildbot](http://81.7.14.172).

## "If __TDP__ is concerned about operating system diversity, why does it just focus on BSD Systems, and not other operating systems such as Illuminos?" ##

__TDP__ focuses on the BSDs due to our backgrounds and experiences. It is critical to note that our code and materials respect established standards, and everything we produce has the 2-clause BSD license. __TDP__ is commited to portability and interoperability. We are building an open ecosystem.

In other words, if someone wanted to take __TDP__ code and materials and spawn a similar project based on another operating system, say Plan 9, with the same eye on Tor diversity, __TDP's__ groundwork should make that task easier.

It is important to note that unlike the GNU/Linux distributions, the BSD projects, [FreeBSD](http://www.freebsd.org), [NetBSD](http://www.netbsd.org), [OpenBSD](http://www.openbsd.org) and [DragonFly BSD](http://www.dragonflybsd.org), are distinct operating systems. While the Linux distributions share a reasonably common kernel, each BSD project maintains its own kernel and userland, and determines the third-party applications available. Each BSD project evolved independently even though each originates with 386BSD Unix from the early 1990s, or [earlier, depending on how it's measured](http://mirrors.nycbug.org/pub/The_Unix_Archive/). There is and continues to be a good deal of code-sharing between the projects, including many kernel features and device drivers.  However over time, the major BSDs have chosen different focuses causing whole aspects of their systems to diverge. For instance, each of the BSDs has ported OpenBSD's packet filter. Yet in the 1990's, all the BSDs used ipf by default. FreeBSD continues to provide ipfw, and NetBSD developed npf, another firewall alternative.

The uniting aspects for all the BSDs is the preference for the simplicity of BSD/ISC/MIT licensing and adherence to the guiding tenets of classic Unix, such as portability, modularity and interoperability.

## "Diversity?  It's all written in C. The Linux distros and some of the BSDs have a lot of common pieces like GCC, OpenSSL, etc." ##

Ultimately diversity *does* mean asking much broader questions. More diversity in operating systems, hardware, SSL versions, geographical locations, the list could continue endlessly. It's the right question to ask, but __TDP__ is only beginning to provide a small piece of a response.

## "How many Tor relays are running a BSD?" ##

The number and percentage of public Tor relays fluctuates, and this applies to BSD relays as well. In the fall of 2014, almost 6% of relays were running a BSD. As of May 2015, the percentage is about 3.8%. Web sites such as [BlutMagie](http://torstatus.blutmagie.de) provide a full list of relays with a simple query form to determine the exact current number among other data.

[Tor Metrics](https://metrics.torproject.org/platforms.html) provides a clear graph that strikingly, and disturbingly in our opinions, illustrates the monoculture in relay platforms.

## "Doesn't the [Tor web site download page](https://www.torproject.org/download/download-easy.html.en) list a Tor Browser for GNU/Linux, that also supports 'Unix, BSD'?" ##

That is true, but unfortunately inaccurate. The current Tor download does not work on any of the BSDs for a variety of reasons.

## "I run a Tor relay on such and such Linux distribution. How hard would it be to run a BSD relay for me?" ##

In reference to [this Reddit thread](https://www.reddit.com/r/linux/comments/356iyy/torbsd_diversity_project_help_move_tor_nodes_from/), anyone technical enough to run a robust and secure Tor relay should stick with the operating system they are most comfortable with. Nothing is more dangerous than someone running a public anonymity server on an unfamiliar operating system. __We are not interested in moving "Tor nodes from Linux to BSD."__ We want *more* nodes, preferably by increasing the number of BSD nodes faster, not by converting anyone to anything.

To a large extent, __TDP's__ target audience is those already familiar with the BSDs. Significant numbers in the BSD community have access to data center space for running relays, are developers who hack code, etc. It's about getting the BSD community engaged into the Tor scene, not so much vice-versa.

For those interested in running a BSD relay, command-line interactions are similar enough to the Linux distros. While not the default shell on any BSD, bash is available as a port and package on all of them, although shells such as tcsh and ksh are more than capable in themselves. As a matter of fact, migrating from bash might [decrease security patching time](https://web.nvd.nist.gov/view/vuln/search-results?query=bash&search_type=all&cves=on) compared to [tcsh](https://web.nvd.nist.gov/view/vuln/search-results?query=tcsh&search_type=all&cves=on) or even [ancient, non-OpenBSD versions of ksh](https://web.nvd.nist.gov/view/vuln/search-results?query=ksh&search_type=all&cves=on).

The BSD install processes vary, but after a few tries, it's hardly a difficult task. For the BSDs, there is no assumption that graphical installers are "easier" than non-graphical ones.

Installing a package isn't difficult either. To install the rsync package on FreeBSD, for instance, the user just has to type "pkg install rsync."  For OpenBSD, it's just "pkg_add rsync." NetBSD's [pkgsrc](http://www.netbsd.org/docs/pkgsrc/) also maintains simple syntax, and happens to run on a variety of other operating systems.

The important principle is to minimize the operating system footprint, including daemons listening, applications installed, etc. If it's a Tor relay, it should not be multi-user system, and not a file server, web server, etc. Use the default shell, use the base utilities as opposed to third-party applications, keep the attack surface minimized.

With a little time and patience, running a BSD relay shouldn't be an insurmoutable task for any Linux user beyond those brand-new to computing. For someone comfortable in the shell, editing files, and so on, it is simple enough.

## "Why did Tor Browser work start with OpenBSD? On the desktop at least, isn't FreeBSD more popular?" ##

FreeBSD may very well be more widely used, but operating system usage statistics are wildly untrustworthy.

While all the BSDs aim to be standards compliant, OpenBSD is the most orthodox in this respect. Therefore, if software runs on OpenBSD and is accepted into their base or ports trees, porting that software to another POSIX-compliant operating system is very possible. There are popular examples to mention, such as OpenSSH, arc4random, OpenNTPD and for those who only read Slashdot.org over the past year, LibreSSL is quickly gaining momentum as another piece of easily portable code from the OpenBSD project.

With a production-quality OpenBSD Tor Browser port, porting to other BSDs or any other POSIX-based systems should be relatively trivial task.

## "Are you associated with the Tor Project?" ##

__TDP__ is __not__ an official project of Tor. We are merely long-time Tor users and relay operators whose preferred platform is BSD Unix.

## "What do you hope to accomplish with porting the Tor Browser to OpenBSD?" ##

## "What are the hurdles to porting Tor Browser to OpenBSD?" ##

## "Will the Tor Browser be in the OpenBSD ports tree and available as a package?" ##

Yes.  Definitely.

## "Beyond porting Tor Browser to OpenBSD and the relay guides, what other activities does __TDP__ look to conduct?" ##

We have a long list of potential projects, some of which commenced years ago. This is a list in flux, and we only consider it a loose guide.

__A Presence at BSD Events__ There are a number of BSD conferences that take place around the globe, such as [BSDCan in Ottawa, Canada](http://www.bsdcan.org), [AsiaBSDCon in Tokyo, Japan](http://www.asiabsdcon.org), [EuroBSDCon](http://www.eurobsdcon.org), [MeetBSD in California](http://www.meetbsd.com) and which alternates with [MeetBSD in Polska](http://www.meetbsd.org) and finally [NYCBSDCon in New York City](http://www.nycbsdcon.org). These are opportune places to interact face-to-face with the broader BSD community with presentations and birds-of-a-feather sessions (BoFs). To date, BoFs has been conducted at vBSDCon in the fall of 2013 and NYCBSDCon in February 2014. We are planning another BoF at BSDCan in June 2014, and look to distribute a [__TDP__ informational flier](materials/flier-bsd.html).

__BSD Relay Configuration Video Tutorials__ Written tutorials are a useful medium for assistance in configuring BSD relays. For some, especially groups of people, professionally produced video tutorials are more appropriate.

__Relay Guide Translations__ While English remains the de facto language of technical documentation, it is hardly the only language. We are looking to keep current translations of the 'production' versions of our relay configuration guides online and available. This could also increase the geographical diversity of the Tor network beyond its concentrations in the US, Canada and Europe.

__High-Bandwidth BSD Relays__ An immediate way to diversify available Tor relay bandwidth is to operate several high-bandwidth relays. At a certain moment in May 2015, only two of the top thirty relays, in terms of bandwidth, are __not__ running GNU/Linux. Both are running FreeBSD. Building and maintaining at least two high-bandwidth "bare metal" relays, one running OpenBSD and the other FreeBSD, with a minimum bandwidth of 20Mbps, would change this situation in the short-term. But we don't aim to individually act as a band-aid to the diversity problem. These relays would allow further testing and optimizing of high-bandwidth Tor relays running BSDs, and ideally become a model for others.

__A FreeBSD Port of the Tor Browser__ After the OpenBSD Tor Browser port is completed, the next client software target would likely be be FreeBSD. Note that PC-BSD's Kris Moore has [created a "Tor-Mode"](http://blog.pcbsd.org/2015/03/a-look-at-the-upcoming-features-for-10-1-2/) for their desktop's browser. 

We have additional ideas in consideration for __TDP__, and will regularly assess and reassess both old and new ones. Ultimately, __TDP__ needs broader BSD community involvement of both users and developers to have the impact we are aiming for.
