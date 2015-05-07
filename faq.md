Title: TDP Frequently Asked Questions
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.

# __TDP__ Frequently Asked Questions #

Below are some typical questions about __Tor BSD Diversity Project__. Feel free to [contact us](/contact.html) for questions or comments not mentioned.

## "How can I contribute to __TDP__?" ##

To answer this question, we have to start with your particular skills.

* general

Review our web site and documentation, and let us know if something is unclear or unstated. If you attend any BSD or open source events, print out a copy of the __TDP__ informational flier. Join the Tor-BSD list.

* developers

Pull our repositories, build and break the software, submit tickets and patches.

* systems administrators

Run a BSD relay, use and review the relay guides, contribute input.

* users

As a BSD Tor Browser is available, start using and testing it. Submit comments and questions.

## If __TDP__ is concerned about operating system diversity, why does it just focus on BSD Systems, and not other operating systems such as Illuminos? ##

__TDP__ focuses on the BSDs due to our backgrounds and experiences. It is critical to note that our code and materials respect established standards, and everything we produce has the 2-clause BSD license. __TDP__ is commited to portability and interoperability. We are building an open ecosystem.

In other words, if someone wanted to take __TDP__ code and materials and utilize it to spawn a similar project based on Plan 9 the same eye on Tor diversity, __TDP's__ groundwork should make that task easier.

It is important to note that unlike the GNU/Linux distributions, the BSD projects, FreeBSD, NetBSD, OpenBSD and DragonFly BSD, are distinct operating systems. While the Linux distributions share a common kernel, each BSD project maintains its own kernel and userland, and determines the third-party applications available. Each BSD project developed independently even though each ultimately originates with 386BSD Unix from the early 1990s. There is and continues to be a good deal of code-sharing between the projects, including many kernel features and device drivers.  However over time, the major BSDs have chosen different focuses causing whole aspects of their systems to diverge. For instance, each of the BSDs has ported OpenBSD's packet filter. Yet in the 1990's, all the BSDs used ipf by default. FreeBSD continues to provide ipfw, and NetBSD developed npf, another firewall alternative.

The uniting aspects for all the BSDs is the preference for the simplicity of BSD/ISC/MIT licensing and adherence to the guiding tenets of classic Unix, such as portability, modularity and interoperability.

## How many Tor relays are running a BSD? ##

The number and percentage of public Tor relays fluctuates. In the fall of 2014, almost 6% of relays were running a BSD. As of May 2015, the percentage is about 3.8%. Web sites such as [BlutMagie](http://torstatus.blutmagie.de) provide a full list of relays with a simple query form to determine the exact current number among other data.

## Doesn't the [Tor web site download page](https://www.torproject.org/download/download-easy.html.en) list a Tor Browser for GNU/Linux, that also supports "Unix, BSD"? ##

That is true, but unfortunately inaccurate. The current Tor download does not work on any of the BSDs for a variety of reasons.

## "I run a Tor relay on such and such Linux distribution. How hard would it be to run a BSD relay for me?" ##

On the surface of a BSD system, command-line interactions are similar to most Linux distros. While not the default shell on any BSD, bash is available as a port and package on all of them, although shells such as tcsh and ksh are more than capable in themselves.

The BSD install processes vary, but after a few tries, it's hardly a difficult task.

Installing a package isn't difficult either. To install the rsync package on FreeBSD, for instance, the user just has to type "pkg install rsync."  For OpenBSD, it's just "pkg_add rsync."

With a little time and patience, running a BSD relay shouldn't be difficult for any Linux user beyond those brand-new to computing. For someone comfortable in the shell, editing files, and so on, it should be simple enough.

## Why did Tor Browser work start with OpenBSD? On the desktop at least, isn't FreeBSD more popular? ##

FreeBSD may very well be more widely used, but operating system usage statistics are wildly untrustworthy, particularly when the BSD license doesn't require users to publicize using BSD code.

While all the BSDs aim to be standards compliant, OpenBSD is the most orthodox in this respect. The tail(4) command won't even allow -f with multiple files. But if it runs on OpenBSD and is accepted into the base or ports trees, it is likely the easiest operating system to port software __from__. There are popular examples to mention, such as OpenSSH, arc4random, OpenNTPD and for those who only read Slashdot.org over the past year, LibreSSL is quickly gaining momentum as another piece of easily portable code from the OpenBSD project.

With a production-quality OpenBSD Tor Browser port, FreeBSD, NetBSD, DragonFly BSD, etc., ports should be trivial. Not to mention any other POSIX-based operating systems.

## What do you hope to accomplish with porting the Tor Browser to OpenBSD? ##

## What are the hurdles to porting Tor Browser to OpenBSD? ##

## Will the Tor Browser be in the OpenBSD ports tree and available as a package? ##

## Beyond porting Tor Browser to OpenBSD and the relay guides, what other activities does __TDP__ look to conduct? ##

We have a long list of potential projects, some of which already commenced years ago. This is a list in flux, and we only consider it a loose guide.

__A presence at BSD Events__ There are a number of BSD conferences that take place around the globe, such as [BSDCan in Ottawa, Canada](http://www.bsdcan.org), [AsiaBSDCon in Tokyo, Japan](http://www.asiabsdcon.org),[EuroBSDCon](http://www.eurobsdcon.org), [MeetBSD in California](http://www.meetbsd.com) and alternates with [MeetBSD in Polska](http://www.meetbsd.org) and [NYCBSDCon in New York City](http://www.nycbsdcon.org). These are opportune places to interact face-to-face with the broader BSD community with presentations and birds-of-a-feather sessions (BoFs). To date, BoFs has been conducted at vBSDCon in the fall of 2013 and NYCBSDCon in February 2014. We are planning another BoF at BSDCan in June 2014, and look to distribute a __TDP__ informational flier.

__BSD Relay Configuration Video Tutorials__ Written tutorials are a useful medium for assistance in configuring BSD relays. However, for some, especially groups of people, professionally produced video tutorials are more appropriate.

__Relay Guide Translations__ While English tends to dominate technical documentation, it is hardly the only language. We are looking to keep current translations of the 'production' versions of our relay configuration guides online and available. This could also increase the geographical diversity of the Tor network beyond its concentrations in the US, Canada and Europe.

__High-Bandwidth BSD Relays__ An immediate way to diversify available Tor relay bandwidth is to operate several high-bandwidth relays. At a certain moment in May 2015, only two of the top thirty relays, in terms of bandwidth, are __not__ running GNU/Linux. Both are running FreeBSD. Building and maintaining at least two high-bandwidth "bare metal" relays, one running OpenBSD and the other FreeBSD, with a minimum bandwidth of 20Mbps, would change this situation in the short-term. But we don't aim to individually act as a band-aid to the diversity problem. These relays would allow further testing and optimizing of high-bandwidth Tor relays running BSDs, and ideally become a model for others.

__A FreeBSD Port of the Tor Browser__ After the OpenBSD Tor Browser port is completed, the next client software target would likely be be FreeBSD, which should also make PC-BSD an easy porting task.

We have additional ideas in consideration for __TDP__, and will be regularly assessing and reassessing both old and new ones. Ultimately, __TDP__ needs broader BSD community involvement of both users and developers to have the impact we are aiming for.
