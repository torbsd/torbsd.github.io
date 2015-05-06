Title: TDP Frequently Asked Questions
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.

# Frequently Asked Questions #

Below are some typical questions about __Tor BSD Diversity Project__. Feel free to [contact us](/contact.html) for questions or comments not mentioned.

## If __TDP__ is concerned about operating system diversity, why does it just focus on BSD Systems, and not other operating systems such as Illuminos? ##

Our background and experience is in Unix and the BSDs, therefore that is the focus of __TDP__. It is critical to note that our code and materials, in addition to the licensing, respects established standards and provides liberal BSD licensing. __TDP__ is commited to portability and interoperability.

In other words, if someone wanted to take __TDP__ code and materials and utilize it to spawn a Plan 9 or BeOS project with the same eye on Tor diversity, __TDP__ groundwork should make that task easier.

It is important to note that the BSD projects are unlike the GNU/Linux projects. While the Linux distributions share a common kernel, each BSD project maintains its own kernel and userland, and determines the third-party applications available. Each BSD project is distinct even though each ultimately originates with 386BSD Unix from the early 1990s. There is and continues to be a good deal of code-sharing between the projects, including many kernel features and device drivers.  However over time, the major BSDs have chosen different paths causing whole aspects of their systems to diverge from each other. For instance, each of the BSDs has ported OpenBSD's packet filter. Yet in the 1990's, all the BSDs used ipf by default. FreeBSD continues to provide ipfw, and NetBSD recently created npf, another firewall alternative.

The uniting aspects for all the BSDs is the simple BSD/ISC/MIT license and the aim to stick to the tenets of classic Unix, such as portability, modularity and interoperability.

## How many Tor relays are running a BSD ##

The number and percentage of public Tor relays varies. In the fall of 2014, almost 6% of relays were running a BSD. As of May 2015, the percentage is about 3.8%.

## Doesn't the [Tor web site download page](https://www.torproject.org/download/download-easy.html.en) list a Tor Browser for GNU/Linux, that also lists "Unix, BSD"? ##

That is true, but inaccurate unfortunately. The current Tor download does not work on any of the BSDs for a variety of reasons.

## "I run a Tor relay on such and such Linux. How hard would it be to run a relay on a BSD for me? ##

On the surface of a BSD system, command-line interactions are similar to most Linux distros. While not the default shell on any BSD, bash is available as a port and package on all of them, although shells such as tcsh and ksh are more than capable in themselves.

The BSD install processes vary, but after a few tries, it's hardly a difficult task.

Installing a package isn't difficult. To install a package on FreeBSD, for instance, the user just has to type "pkg install <package-name>.  For OpenBSD, it's just "pkg_add <package-name>".

With a little time and patience, running a BSD relay shouldn't be difficult for any Linux user beyond those brand-new to computing.

## Why did Tor Browser work start with OpenBSD? Isn't FreeBSD more popular? ##

FreeBSD may very well be more widely used, but operating system usage statistics are wildly untrustworthy, particularly when the BSD license doesn't require users to publicize using BSD code.

While all the BSDs aim to be standards compliant, OpenBSD is the most orthodox in this respect. The tail(4) command won't even allow -f with multiple files. But if it runs on OpenBSD and is accepted into the base or ports trees, it is likely the easiest operating system to port software __from__. There are popular examples to mention, such as OpenSSH, arc4random, OpenNTPD and for those who only read Slashdot.org over the past year, LibreSSL is quickly gaining momentum as another piece of easily portable OpenBSD code.

With a production-quality OpenBSD Tor Browser port, FreeBSD, NetBSD, DragonFly BSD, etc., ports should be trivial.

## What do you hope to accomplish with porting the Tor Browser to OpenBSD? ##

## What are the hurdles to porting Tor Browser to OpenBSD? ##

## Will the Tor Browser be in the OpenBSD ports tree and available as a package? ##

## Besides porting Tor Browser to OpenBSD and the relay guides, what other activities does __TDP__ look to conduct? ##

__A presence at BSD Events__ There are a number of BSD conferences that take place around the globe, such as [BSDCan in Ottawa, Canada](http://www.bsdcan.org), [EuroBSDCon](http://www.eurobsdcon.org), [MeetBSD in California](http://www.meetbsd.com) and alternates with [MeetBSD in Polska](http://www.meetbsd.org) and [NYCBSDCon in New York City](http://www.nycbsdcon.org). These are opportune places to interact face-to-face with the broader BSD community with presentations and birds-of-a-feather sessions (BoFs). To date, BoFs has been conducted at vBSDCon in the fall of 2013 and NYCBSDCon in February 2014. We are planning another BoF at BSDCan in June 2014, and look to provide an informational flier about __TDP__.

__BSD Relay Configuration Video Tutorials__ For many people, written tutorials are a fine medium for assistance in configuring BSD relays. However, for some, especially groups of people, professional video tutorials are more appropriate.

__Relay Guide Translations__ While English tends to dominate technical documentation, it is hardly the only language. We are looking to keep current translations of the 'production' versions of our relay configuration guides online and available. This could also increase the geographical diversity of the Tor network beyond its concentrations in the US, Canada and Europe.

__High-Bandwidth BSD Relays__ An immediate way to diversify available Tor relay bandwidth is to operate several relays. At a certain moment in May 2015, only two of the top thirty relays, in terms of bandwidth, are not running GNU/Linux. Both are running FreeBSD. Building and maintaining at least two high-bandwidth relays, one running OpenBSD and the other FreeBSD, with a minimum bandwidth of 20Mbps would change this situation in the short-term. More importantly, these relays would allow further testing and optimizing of high-bandwidth Tor relays running BSDs.

__A FreeBSD Port of the Tor Browser__ After the OpenBSD Tor Browser port is completed, the next client target would be FreeBSD, which should also make PC-BSD an easy porting task.

We have additional ideas in consideration for __TDP__, and will be regularly assessing and reassessing new ones. Ultimately, __TDP__ needs more involvement of users and developers to have the impact we are aiming for.
