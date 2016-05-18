Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Data: 2015-11-17
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

## Porting Targets for PETs ##

Over the past few years, a long list of applications spawned from attention to privacy and anonymity solutions. Most originated as efforts to provide secure, open-source alternatives to common, proprietary solutions. Jitsi and Ricochet, for instance, arose as attempted replacements for Skype.

This is a list of some of those alternate tools. Most have not been ported to any of the BSDs. Some probably *shouldn't* be ported to the BSDs or any other sane operating system. Some are unmaintained, or unmaintainable. Is shells/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash/) a dependency? Maybe a patch should be sent upstream before even considering a port. But this list is an attempt to summarize the applications and provide relevant information for any *BSD developer interested in reviewing or porting them. __No endorsements should be assumed from this list.__

The listed information should be considered a guide but should be confirmed due to any inaccuracies or changes. Please use our [GitHub account's torbsd.github.io "issues" page for any input](https://github.com/torbsd/torbsd.github.io/issues/).

*Just because it says "yes" next to a BSD ports system doesn't mean it's current or works correctly*

These are loose categorizations of the ports. Where there is no consensus among the BSDs on category, we chose whichever was already ported, then the more specific category, for example __net-p2p__ over __net__. For the ports we are unsure how to categorize or haven't approached yet, we have put them under [misc](#misc). But overall, the categories are just a basic guide.

## PETs Related Open Source Software Packages ##

[editors](#editors)  [%sep] [graphics](#graphics) [%sep]  [mail](#mail) [%sep] [misc](#misc) [%sep] [net](#net) [%sep] [net-im](#net-im) [%sep] [net-p2p](#net-p2p) [%sep] [security](#security) [%sep] [sysutils](#sysutils) [%sep] [www](#www)

__tool-name__
: __Description__: _short-descr_
: __Site__: _www-site_
: __License__: _explicit license stated, along with URL to the actual_
: __Source__: _url to distfile_
: __Version__: _version information, e.g. current stable, development release, ..._
: __FreeBSD__: [FreeBSD ports system](https://svnweb.freebsd.org/ports/head/)
: __OpenBSD__: [OpenBSD packages](http://ftp.openbsd.org/pub/OpenBSD/snapshots/packages/), which generally also apply to BitRig
: __NetBSD__: [NetBSD's pkgsrc](http://ftp.netbsd.org/pub/pkgsrc/current/pkgsrc/README-all.html) for multiple operating systems
: __DragonFly__: [DragonFly BSD's ports](http://avalon.dragonflybsd.org/dports/dragonfly:4.6:x86:64/LATEST/All/), similar to FreeBSD
: __Notes__: _etc..._

###<a id="editors">editors</a>###

<a id="pkg-autocanary">__AutoCanary__</a>
: Description: desktop application for generating machine-readable, signed canary statements
: Site: [https://firstlook.org/code/project/autocanary/](https://firstlook.org/code/project/autocanary/)
: License: [GPLv3](https://github.com/firstlook/autocanary/blob/master/LICENSE.md)
: Source: [https://github.com/firstlook/autocanary/](https://github.com/firstlook/autocanary/)
: Version: 0.1
: FreeBSD: no
: OpenBSD: no
: NetBSD: no
: DragonFly: no
: Notes: [Wikipedia on Warrant Canaries](https://en.wikipedia.org/wiki/Warrant_canary/). Not portable as-is, with builds only for Windows, OSX and Debian.

<a id="pkg-ethercalc">__EtherCalc__</a>
: Description: collaborative spreadsheet application
: Site: [https://ethercalc.net/](https://ethercalc.net/)
: License: [CPAL 1.0 Artistic License 2.0](https://github.com/audreyt/ethercalc/blob/master/LICENSE.txt)
: Source: [https://github.com/audreyt/ethercalc/](https://github.com/audreyt/ethercalc/)
: Version: 0.20151108.1
: FreeBSD: no
: OpenBSD: no
: NetBSD: no
: DragonFly: no
: Notes:

<a id="pkg-etherpad">__Etherpad__</a>
: Description: collaborative editing application
: Site: [http://etherpad.org/](http://etherpad.org/)
: License: [Apache 2.0](https://github.com/ether/etherpad-lite/blob/develop/LICENSE/)
: Source: [https://github.com/ether/etherpad-lite/](https://github.com/ether/etherpad-lite/)
: Version: 1.5.7
: FreeBSD: no
: OpenBSD: no
: NetBSD: no
: DragonFly: no
: Notes:

###<a id="graphics">graphics</a>###

<a id="pkg-exiftool">__ExifTool__</a>
: Description: tool for editing, reading, writing metadata on a variety of file types
: Site: [http://owl.phy.queensu.ca/~phil/exiftool/](http://owl.phy.queensu.ca/~phil/exiftool/)
: License: [Perl](http://owl.phy.queensu.ca/~phil/exiftool/#license)
: Source: [http://owl.phy.queensu.ca/~phil/exiftool/Image-ExifTool-10.13.tar.gz](http://owl.phy.queensu.ca/~phil/exiftool/Image-ExifTool-10.13.tar.gz)
: Version: 10.13
: FreeBSD: yes
: OpenBSD: yes
: NetBSD: yes
: DragonFly: yes

<a id="pkg-exiv2">__Exiv2__</a>
: Description: command-line utility to manage image metadata
: Site: [http://www.exiv2.org/](http://www.exiv2.org/)
: License: [GPLv2 or commercial](http://www.exiv2.org/download.html#license)
: Source: [http://www.exiv2.org/exiv2-0.25.tar.gz](http://www.exiv2.org/exiv2-0.25.tar.gz)
: Version: 0.25
: FreeBSD: yes
: OpenBSD: yes
: NetBSD: yes
: DragonFly: yes

<a id="pkg-jhead">__jhead__</a>
: Description: tool for manipulating JPEG EXIF files
: Site: [http://www.sentex.net/~mwandel/jhead/](http://www.sentex.net/~mwandel/jhead/)
: License: [Public Domain](http://www.sentex.net/~mwandel/jhead/)
: Source: [http://www.sentex.net/~mwandel/jhead/jhead-3.00.tar.gz](http://www.sentex.net/~mwandel/jhead/jhead-3.00.tar.gz)
: Version: 3.00
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

<a id="pkg-mat">__MAT__</a>
: Description: tool for removing metadata
: Site: [http://mat.boum.org/](http://mat.boum.org/)
: License: [GPLv2](https://gitweb.torproject.org/user/jvoisin/mat.git/tree/LICENSE/)
: Source: [https://gitweb.torproject.org/user/jvoisin/mat.git](https://gitweb.torproject.org/user/jvoisin/mat.git)
: Version: 0.6.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: command-line and GUI, with a library.

<a id="pkg-pdf-redact-tools">__pdf-redact-tools__</a>
: Description: tools to redact and strip metadata from documents
: Site: [https://firstlook.org/code/project/pdf-redact-tools/](https://firstlook.org/code/project/pdf-redact-tools/)
: License: [GPLv3](https://github.com/firstlook/pdf-redact-tools/blob/master/LICENSE)
: Source: [https://github.com/firstlook/pdf-redact-tools/](https://github.com/firstlook/pdf-redact-tools/)
: Version: 0.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: yes
: DPorts: no
: notes:

###<a id="mail">mail</a>###


<a id="pkg-mailpile">__Mailpile__</a>
: Description: fast webmail client with built-in security features
: Site: [https://www.mailpile.is](https://www.mailpile.is/)
: License: [AGPLv3](https://github.com/mailpile/Mailpile/)
: Source: [https://github.com/mailpile/Mailpile/](https://github.com/mailpile/Mailpile/)
: Version: 0.5.2
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes:

<a id="pkg-mixmaster">__Mixmaster__</a>
: Description: type II anonymous remailer
: Site: [http://mixmaster.sourceforge.net/](http://mixmaster.sourceforge.net/)
: License: [MIT](https://anonscm.debian.org/viewvc/pkg-mixmaster/trunk/Mix/COPYRIGHT?view=markup)
: Source: [http://sourceforge.net/projects/mixmaster/files/latest/download?source=files](http://sourceforge.net/projects/mixmaster/files/latest/download?source=files)
: Version: 3.0
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts: no
: notes: not under active development.

<a id="pkg-mixminion">__Mixminion__</a>
: Description: type III anonymous remailer
: Site: [http://mixminion.net](http://mixminion.net)
: License: [MIT](https://github.com/nmathewson/mixminion/blob/master/LICENSE/)
: Source: [https://github.com/nmathewson/mixminion/](https://github.com/nmathewson/mixminion/)
: Version: 0.0.8alpha3
: FreeBSD: no
: OpenBSD: no
: pkgsrc: yes
: DPorts: no
: notes: not under active development.

<a id="pkg-torbirdy">__Torbirdy__</a>
: Description: Thunderbird add-on for using accessing email over the Tor network
: Site: [https://trac.torproject.org/projects/tor/wiki/torbirdy/](https://trac.torproject.org/projects/tor/wiki/torbirdy/)
: License: [BSD](https://gitweb.torproject.org/torbirdy.git/tree/LICENSE)
: Source [https://gitweb.torproject.org/torbirdy.git](https://gitweb.torproject.org/torbirdy.git)
: Version: 0.1.4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: should Mozilla add-ons be their own ports? What about installs which require shells/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) as dependencies?

###<a id="misc">misc</a>###

<a id="pkg-kontalk">__Kontalk server__</a>
: Description: encrypted communications platform
: Site: [http://www.kontalk.org/](http://www.kontalk.org/)
: License: GPLv3 check each component under GitHub account
: Source: [https://github.com/kontalk/](https://github.com/kontalk/)
: Version: various
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: client and server component of Kontalk XMPP client

<a id="pkg-leap">__LEAP__</a>
: Description: secure server client platform
: Site: [https://leap.se/](https://leap.se/)
: License: GPLv3 https://leap.se/git/{bitmask_client.git,leap_platform,git,etc}/blob/HEAD:/LICENSE
: Source: [https://leap.se/git/](https://leap.se/git/)
: Version: various
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: various components would needed for full porting, but starting point is likely the platform.

<a id="pkg-libertree">__Libertree__</a>
: Description: open-source platform for creating private social networks
: Site: [http://www.libertree.org/](http://www.libertree.org/)
: License: [GNU Affero](https://github.com/Libertree/libertree/blob/master/LICENCE)
: Source: [https://github.com/LiberTree/libertree/](https://github.com/LiberTree/libertree/)
: Version: n/a
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

<a id="pkg-martus-desktop">__Martus Desktop__</a>
: Description: platform for collecting, safeguarding, organizing and sharing info
: Site: [https://www.martus.org/](https://www.martus.org/)
: License: ???
: Source: [https://martus.org/installers/Martus-Source-5.1.1.zip](https://martus.org/installers/Martus-Source-5.1.1.zip)
: Version: 5.1.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

<a id="pkg-martus-server">__Martus Server__</a>
: Description: platform for collecting, safeguarding, organizing and sharing info
: Site: [https://www.martus.org/](https://www.martus.org/)
: License: ??
: Source: [https://code.google.com/archive/p/martus/source#hg/source/org/martus/server](https://code.google.com/archive/p/martus/source#hg/source/org/martus/server)
: Version: ??
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

<a id="pkg-securedrop">__SecureDrop__</a>
: Description: open-source whistleblower submission system
: Site: [https://securedrop.org/](https://securedrop.org)
: License: [AGPL](https://github.com/freedomofpress/securedrop/blob/develop/LICENSE)
: Source: [https://github.com/freedomofpress/securedrop/](https://github.com/freedomofpress/securedrop/)
: Version: 0.3.6
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: Topology review is probably first step. Very Debian-centric.

<a id="pkg-sparkleshare">__SparkleShare__</a>
: Description: Git-based file synchronization tool
: Site: [http://sparkleshare.org/](http://sparkleshare.org)
: License: [GPLv3](https://github.com/hbons/SparkleShare/blob/master/legal/License_for_SparkleShare.txt)
: Source: [https://github.com/hbons/SparkleShare/](https://github.com/hbons/SparkleShare/)
: Version: 1.5
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: essentially a GUI for git with server and client components

<a id="pkg-syncany">__Syncany__</a>
: Description: open-source cloud storage and filesharing application
: Site: [https://www.syncany.org/](https://www.syncany.org/)
: License: [GPLv3](https://github.com/syncany/syncany/blob/develop/LICENSE.md)
: Source: [https://github.com/syncany/syncany/](https://github.com/syncany/syncany/)
: Version: 0.4.7-alpha
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

<a id="pkg-turtl">__Turtl__</a>
: Description: encrypted personal database and note-taking application
: Site: [https://turtl.it/](https://turtl.it)
: License: [GPLv3](https://github.com/turtl/api/blob/master/LICENSE/)
: Source: [https://github.com/turtl/](https://github.com/turtl/)
: Version: various
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: various components for the platform in GitHub, including API and desktop.

###<a id="net">net</a>###

<a id="pkg-arm">__arm/nyx__</a>
: Description: terminal status monitor for Tor
: Site: [https://www.atagar.com/arm/](https://www.atagar.com/arm/)
: License: [GPLv3](https://gitweb.torproject.org/nyx.git/tree/LICENSE)
: Source: [https://gitweb.torproject.org/nyx.git](https://gitweb.torproject.org/nyx.git)
: Version: 1.4.5.0
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts: no
: notes:

<a id="pkg-blockfinder">__blockfinder__</a>
: Description: tool for enumerating network information by country
: Site: n/a
: License: [BSD](https://github.com/ioerror/blockfinder/blob/master/LICENSE/)
: Source: [https://github.com/ioerror/blockfinder/](https://github.com/ioerror/blockfinder/)
: Version: 4.0.0
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: Notes:

<a id="pkg-onioncat">__onioncat__</a>
: Description: IP transparent Tor hidden service connector
: Site: [https://www.cypherpunk.at/onioncat_trac/](https://www.cypherpunk.at/onioncat_trac/)
: License: [GPLv3](https://www.cypherpunk.at/onioncat_trac/wiki/COPYING)
: Source: [https://www.cypherpunk.at/ocat/download/Source/](https://www.cypherpunk.at/ocat/download/Source/)
: Version: 0.2.2
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc:  no
: DPorts: yes
: Notes:

<a id="pkg-onionshare">__OnionShare__</a>
: Description: secure and anonymous file-sharing tool
: Site: [https://onionshare.org/](https://onionshare.org/)
: License: [GPLv3](https://github.com/michahflee/onionshare/blob/master/LICENSE)
: Source: [https://github.com/micahflee/onionshare/](https://github.com/micahflee/onionshare/)
: Version: 0.8.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

<a id="pkg-ooni-probe">__ooni-probe__</a>
: Description: network measurement framework for detecting network interference
: Site: [https://ooni.torproject.org/](https://ooni.torproject.org/)
: License: [BSD](https://gitweb.torproject.org/onionoo.git/tree/LICENSE)
: Source: [https://github.com/TheTorProject/ooni-probe/](https://github.com/TheTorProject/ooni-probe/)
: Version: 1.3.2
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

<a id="pkg-ring">__Ring__</a>
: Description: open source communications platform
: Site: [https://ring.cx/](https://ring.cx/)
: License: [GPLv3](https://ring.cx/en/documentation/about-ring/)
: Source: [https://github.com/savoirfairelinux/ring-project](https://github.com/savoirfairelinux/ring-project)
: Version: various
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: various components for the platform, including daemon and GNOME client. ring-project initial target? no release yet. python3

<a id="pkg-syncthing">__Syncthing__</a>
: Description: open-source cloud storage and synchronization
: Site: [https://syncthing.net/](https://syncthing.net/)
: License: [MPLv2](https://github.com/syncthing/syncthing/blob/master/LICENSE)
: Source: [https://github.com/syncthing/syncthing/](https://github.com/syncthing/syncthing/)
: Version: 0.13-beta
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes: GitHub builds available for OpenBSD i386 and amd64

<a id="pkg-tor">__Tor__</a>
: Description: stable version of the onion-routing daemon for anonymous networking
: Site: [https://www.torproject.org/](https://www.torproject.org/)
: License: [BSD](https://gitweb.torproject.org/tor.git/tree/LICENSE)
: Source: [https://gitweb.torproject.org/tor.git/](https://gitweb.torproject.org/tor.git/)
: Version: 0.2.7.6
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

<a id="pkg-tor-alpha">__Tor Alpha/Development__</a>
: Description: development version of the onion-routing daemon for anonymous networking
: Site: [https://www.torproject.org/](https://www.torproject.org/)
: License: [BSD](https://gitweb.torproject.org/tor.git/tree/LICENSE/)
: Source: [https://gitweb.torproject.org/tor.git/](https://gitweb.torproject.org/tor.git/)
: Source: 0.2.8.2-alpha
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: yes
: DPorts: yes
: notes: The alpha version is worth considering for production since it's stable and often the most effective in terms of circumvention counter-measures. OpenBSD does not include alpha or development versions of software in their ports

<a id="pkg-torsocks">__Torsocks__</a>
: Description: SOCKS proxy for routing TCP applications through the Tor network
: Site: [https://www.torproject.org/](https://www.torproject.org/)
: License: [GPLv2](https://gitweb.torproject.org/torsocks.git/tree/LICENSE/)
: Source: [https://gitweb.torproject.org/torsocks.git/](https://gitweb.torproject.org/torsocks.git/)
: Version: 2.1.0
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts: yes
: notes: relies on torrc SOCKS port matching torsocks configuration.

<a id="pkg-torstatus">__Torstatus__</a>
: Description: tool for aggregating and presenting public information about the Tor network
: Site: n/a
: License: [BSD](https://gitweb.torproject.org/torstatus.git/tree/doc/LICENSE)
: Source: [https://gitweb.torproject.org/torstatus.git/](https://gitweb.torproject.org/torstatus.git/)
: Version: n/a
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: outputs to www with Django for easy presentation and queries on the network with main site at https://torstatus.blutmagie.de/

###<a id="net-im">net-im</a>###

<a id="pkg-cryptocat">__Cryptocat__</a>
: Description: accessible chat client
: Site: [https://crypto.cat/](https://crypto.cat/)
: License: [GNU Affero](https://github.com/cryptocat/cryptocat/blob/master/LICENSE.txt)
: Source: [https://github.com/cryptocat/cryptocat/](https://github.com/cryptocat/cryptocat/)
: Version: 3.1.08
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: no releases

<a id="pkg-jitsi">__Jitsi__</a>
: Description: XMPP/SIP client
: Site: [https://jitsi.org/](https://jitsi.org/)
: License: [Apache 2.0](https://github.com/jitsi/jitsi/blob/master/LICENSE)
: Source: [https://github.com/jitsi/jitsi/](https://github.com/jitsi/jitsi/)
: Version: 5509
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: Java-based

<a id="pkg-ricochet">__Ricochet__</a>
: Description: instant messaging client
: Site: [https://ricochet.im/](https://ricochet.im/)
: License: [BSD](https://github.com/ricochet-im/ricochet/blob/master/LICENSE)
: Source: [https://github.com/ricochet-im/ricochet/](https://github.com/ricochet-im/ricochet/)
: Version: 1.1.2
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes:

<a id="pkg-torchat2">__TorChat2__</a>
: Description: peer-to-peer instant messenger running on Tor hidden services
: Site: [https://github.com/prof7bit/TorChat/wiki/](https://github.com/prof7bit/TorChat/wiki/)
: License: [GPLv3](https://en.wikipedia.org/wiki/TorChat)
: Source: [https://github.com/prof7bit/TorChat/](https://github.com/prof7bit/TorChat/)
: Version: 15
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: license? Last activity 2014. 202 forks. jtorchat is Java-based. py_torchat is the original.

<a id="pkg-tor-messenger">__Tor Messenger__</a>
: Description: instant messenger for anonymity utilizing existing protocols
: Site: n/a
: License: [GPLv2](https://github.com/rovemonteux/tormessenger/blob/master/LICENSE)
: Source: [https://gitweb.torproject.org/tor-messenger-build.git](https://gitweb.torproject.org/tor-messenger-build.git)
: Version: 0.1.0b6
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: requires Docker as a build dependency and a bunch of Perl modules. Early stages of development. License reference is from old GitHub account, so may be inaccurate.

<a id="pkg-tox">__Tox/uTox__</a>
: Description: UDP-based communications platform
: Site: [https://tox.chat/](https://tox.chat/)
: License: [GPLv3])(https://github.com/irungentoo/toxcore/blob/master/COPYING)
: Source: [https://github.com/irungentoo/toxcore/](https://github.com/irungentoo/toxcore/)
: Version:
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: FreeBSD builds available on www. Sole GitHub release entitled "api_old_version." Autconf

<a id="pkg-vuvuzela">__vuvuzela__</a>
: Description: private messaging system that hides metadata
: Site: n/a
: License: [AGPLv3](https://github.com/davidlazar/vuvuzela/blob/master/LICENSE) 
: Source: [https://github.com/davidlazar/vuvuzela](https://github.com/davidlazar/vuvuzela)
: Version: 0.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: in early stages of development and no GitHub releases. [SOSP 2015 Paper](https://davidlazar.org/papers/vuvuzela.pdf) and [SOSP 2015 Slides](https://davidlazar.org/slides/vuvuzela-sosp2015.pdf)


###<a id="net-p2p">net-p2p</a>###

<a id="pkg-bitmessage">__Bitmessage__</a>
: Description: messaging platform to Bitcoin
: Site: [https://bitmessage.org/wiki/Main_Page](https://bitmessage.org/wiki/Main_Page)
: License: [MIT](https://github.com/Bitmessage/PyBitmessage/blob/master/LICENSE)
: Source: [https://github.com/Bitmessage/PyBitMessage](https://github.com/Bitmessage/PyBitMessage)
: Version: 0.4.4
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: yes
: DPorts: yes
: notes: call for a [code review](http://blog.anonymousbitcoinbook.com/2015/01/seeking-bitmessage-code-reviewer/). Requires py-elliptic

<a id="pkg-retroshare">__RetroShare__</a>
: Description: secure, decentralized P2P platform
: Site: [http://retroshare.sourceforge.net](http://retroshare.sourceforge.net)
: License: [GPLv3](http://retroshare.sourceforge.net/wiki/index.php/Main_Page)
: Source: [https://github.com/RetroShare/RetroShare](https://github.com/RetroShare/RetroShare)
: Version: 0.6.0
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts: no
: notes:

###<a id="security">security</a>###

<a id="pkg-gpg4usb">__gpg4usb__</a>
: Description: portable editor for encrypting and decrypting files
: Site: [http://www.gpg4usb.org](http://www.gpg4usb.org)
: License: [GPLv3](https://github.com/gpg4usb/gpg4usb/blob/master/COPYING)
: Source: [https://github.com/gpg4usb/gpg4usb](https://github.com/gpg4usb/gpg4usb)
: Version: 0.3.3-2
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

<a id="pkg-keepassx">__KeePassX__</a>
: Description: password management utility
: Site: [http://www.keepassx.org/](http://www.keepassx.org/)
: License: [Various](https://github.com/keepassx/keepassx/)
: Source: [https://github.com/keepassx/keepassx/](https://github.com/keepassx/keepassx/)
: Version: 2.0.2
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

<a id="pkg-obfsproxy">__obfsproxy__</a>
: Description: pluggable transport for Tor
: Site: n/a
: License: [BSD](https://gitweb.torproject.org/pluggable-transports/obfsproxy.git/tree/LICENSE)
: Source: [https://gitweb.torproject.org/pluggable-transports/obfsproxy.git](https://gitweb.torproject.org/pluggable-transports/obfsproxy.git)
: Version: 0.2.13
: FreeBSD: yes
: OpenBSD: no (as WIP)
: pkgsrc: no
: DPort: yes
: notes: 

<a id="pkg-pond">__Pond__</a>
: Description: forward secure, asynchronous messaging
: Site: [https://pond.imperialviolet.org](https://pond.imperialviolet.org)
: License: [BSD](https://github.com/agl/pond/blob/master/LICENSE)
: Source: [https://github.com/agl/pond/](https://github.com/agl/pond/)
: Version: 0.1.1
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

<a id="pkg-pyelliptic">__py-elliptic__</a>
: Description: Python OpenSSL wrapper
: Site: [https://pypyi.python.org/pypi/pyelliptic/](https://pypyi.python.org/pypi/pyelliptic/)
: License: [BSD](https://github.com/yann2192/pyelliptic/blob/master/LICENSE)
: Source: [https://github.com/yann2192/pyelliptic/](https://github.com/yann2192/pyelliptic/)
: Version: 1.5.7
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: run dependency for Bitmessage.

<a id="pkg-py-stem">__py-stem__</a>
: Description: Python controller library for Tor
: Site: [https://stem.torproject.org/](https://stem.torproject.org/)
: License: LGPL
: Source:
: Version: 1.4.1b
: Python www
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts: yes
: notes:

<a id="pkg-scallion">__Scallion__</a>
: Description: GPU-based gpg and onion hash generator
: Site: n/a
: License: [BSD](https://github.com/lachesis/scallion/blob/gpg/LICENCE.txt)
: Source: [https://github.com/lachesis/scallion/](https://github.com/lachesis/scallion/)
: Version: 2.0
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: useful for creating custom or "vanity" GPG keys or .onion addresses. Requires shells/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) and lang/mono.

<a id="pkg-sslyze">__sslyze__</a>
: Description: full-featured SSL scanner
: Site: n/a
: License: [GPLv2](https://github.com/nabla-c0d3/sslyze/blob/master/LICENSE.txt)
: Source: [https://github.com/nabla-c0d3/sslyze](https://github.com/nabla-c0d3/sslyze)
: Version: 0.13.5
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: seems to really require https://github.com/nabla-c0d3/nassl/ which requires more work.

###<a id="sysutils">sysutils</a>###

<a id="pkg-tlsdate">__tlsdate__</a>
: Description: secure parasitic rdate replacement
: Site: n/a
: License: [BSD](https://github.com/ioerror/tlsdate/blob/master/LICENSE)
: Source: [https://github.com/ioerror/tlsdate/](https://github.com/ioerror/tlsdate/)
: Version: 0.0.13
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: BDEP autogen

###<a id="www">www</a>###

<a id="pkg-httpseverywhere">__HTTPS Everywhere__</a>
: Description: Firefox add-on enabling TLS/SSL when available
: Site: n/a
: License:
: Source:
: Version:
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: /bin/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) install script

<a id="pkg-noscript">__NoScript__</a>
: Description: Firefox add-on for blocking scripts
: Site: [https://noscript.net/](https://noscript.net/)
: License: [GPLv3](https://noscript.net/faq#qa1_14)
: Source:
: Version: 2.6.9.39
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: Mozilla add-ons as ports?

<a id="pkg-sigbin">__sigbin__</a>
: Description: web application for storing PGP-signed messages
: Site: n/a 
: License: [GPLv3](https://github.com/firstlook/sigbin/blob/master/LICENSE.md)
: Source: [https://github.com/firstlook/sigbin/](https://github.com/firstlook/sigbin/)
: Version:
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: very early stages of development

<a id="pkg-torbrowser">__Tor Browser__</a>
: Description: Firefox-based browser for using the Tor anonymity network
: Site: [https://www.torproject.org/projects/torbrowser.html.en](https://www.torproject.org/projects/torbrowser.html.en)
: License: [Various](https://gitweb.torproject.org/tor-browser.git/tree/toolkit/content/license.html?h=esr24)
: Source: [https://gitweb.torproject.org/tor-browser.git/](https://gitweb.torproject.org/tor-browser.git/)
: Version: 5.5.4
: FreeBSD: no
: OpenBSD: no, [well...](https://github.com/torbsd/openbsd-ports)
: pkgsrc: sort of
: DPorts: no
: notes: A lot of effort is going into __TDP's__ Tor Browser builds for OpenBSD, and we are in conversations about porting to other BSDs. [pkgsrc version](http://pkgsrc.se/security/tor-browser) is not a fork and takes a different route completely than __TDP__.



{{footer.md}}
