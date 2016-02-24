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

This is a list of some of those applications. Most have not been ported to any of the BSDs. Some probably *shouldn't* be ported to the BSDs or any other sane operating system. Some are unmaintained, or unmaintainable. Is shells/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash/) a dependency? Maybe a patch should be sent upstream before even considering a port. But this list is an attempt to summarize the applications and provide relevant information for any *BSD developer interested in reviewing or porting them. __No endorsements should be assumed from this list.__

The listed information should be considered a guide but should be confirmed due to any inaccuracies or changes. Please use our [GitHub account's torbsd.github.io "issues" page for any input](https://github.com/torbsd/torbsd.github.io/issues/).

*Just because it says "yes" next to a BSD ports system doesn't mean it's current or works correctly*

These are loose categorizations of the ports. Where there is no consensus among the BSDs on category, we chose whichever was already ported, then the more specific category, for example __net-p2p__ over __net__. For the ports we are unsure how to categorize or haven't approached yet, we have put them under [misc](#misc). But overall, the categories are just a basic guide.

## Open Source Software Packages Relevant to PETs ##

[editors](#editors)  [%sep] [graphics](#graphics) [%sep]  [mail](#mail) [%sep] [misc](#misc) [%sep] [net](#net) [%sep] [net-im](#net-im) [%sep] [net-p2p](#net-p2p) [%sep] [security](#security) [%sep] [sysutils](#sysutils) [%sep] [www](#www)

__tool-name__
: __Description__: _short-descr_
: __License__: _name of license and link to actual text for project_
: __Site__: _www-site_
: __License__: _explicit license stated, along with URL to the actual_
: __Source__: _url to distfile_
: __Version__: _version information, e.g. current stable, development release, ..._
: __FreeBSD__: [FreeBSD ports system](https://svnweb.freebsd.org/ports/head/)
: __OpenBSD__: [OpenBSD packages](http://mirrors.nycbug.org/pub/OpenBSD/snapshots/packages/), which generally also apply to BitRig
: __NetBSD__: [NetBSD's pkgsrc](http://ftp.netbsd.org/pub/pkgsrc/current/pkgsrc/README.html) for multiple operating systems
: __DragonFly__: [DragonFly BSD's ports](http://mirrors.nycbug.org/pub/DragonflyBSD/dports/dragonfly:4.4:x86:64/LATEST//All/), similar to FreeBSD
: __Notes__: _etc..._

###<a id="editors">editors</a>###

<a id="pkg-autocanary">__AutoCanary__</a>
: __Description__: desktop application for generating machine-readable, signed canary statements
: Site: [https://firstlook.org/code/project/autocanary/](https://firstlook.org/code/project/autocanary/)
: __License__: [GPLv3](https://github.com/firstlook/autocanary/blob/master/LICENSE.md)
: __Source__: [GitHub](https://github.com/firstlook/autocanary/)
: __Version__: [0.1](https://github.com/firstlook/autocanary/releases/tag/0.1/)
: __FreeBSD__: no
: __OpenBSD__: no
: __NetBSD__: no
: __DragonFly__: no
: __Notes__: [Wikipedia on Warrant Canaries](https://en.wikipedia.org/wiki/Warrant_canary/)

<a id="pkg-ethercalc">__EtherCalc__</a>
: __Description__: collaborative spreadsheet application
: __Site__: [https://ethercalc.net/](https://ethercalc.net/)
: __License__: [CPAL 1.0 Artistic License 2.0](https://github.com/audreyt/ethercalc/blob/master/LICENSE.txt)
: __Source__: [GitHub](https://github.com/audreyt/ethercalc/)
: __Version__: [0.20151108.1](https://github.com/audreyt/ethercalc/releases/tag/0.20151108.1)
: __FreeBSD__: no
: __OpenBSD__: no
: __NetBSD__: no
: __DragonFly__: no

<a id="pkg-etherpad">__Etherpad__</a>
: __Description__: collaborative editing application
: __Site__: [http://etherpad.org/](http://etherpad.org/)
: __License__: [Apache 2.0](https://github.com/ether/etherpad-lite/blob/develop/LICENSE/)
: __Source__: [GitHub](https://github.com/ether/etherpad-lite/)
: __Version__: [1.5.7](https://github.com/ether/etherpad-lite/releases/tag/1.5.7/)
: __FreeBSD__: no
: __OpenBSD__: no
: __NetBSD__: no
: __DragonFly__: no

###<a id="graphics">graphics</a>###

<a id="pkg-exiftool">ExifTool</a>
: __Description__: tool for editing, reading, writing metadata on a variety of file types
: Site: http://owl.phy.queensu.ca/~phil/exiftool/
: License: [Perl](http://owl.phy.queensu.ca/~phil/exiftool/#license)
: Source: http://owl.phy.queensu.ca/~phil/exiftool/Image-ExifTool-10.05.tar.gz)
: Version: 10.05
: FreeBSD: yes
: OpenBSD: no
: NetBSD: yes
: DragonFly: yes

<a id="pkg-exiv2">Exiv2</a>
: Description: command-line utility to manage image metadata
: Site: [http://www.exiv2.org/](http://www.exiv2.org/)
: License: GPLv2 or commercial http://www.exiv2.org/download.html#license
: Version: 0.25
: FreeBSD: yes
: OpenBSD: yes
: NetBSD: yes
: DragonFly: yes

jhead
: __Description__: tool for manipulating JPEG EXIF files
: http://www.sentex.net/~mwandel/jhead/
: License: Public Domain http://www.sentex.net/~mwandel/jhead/
: http://www.sentex.net/~mwandel/jhead/jhead-3.00.tar.gz
: Version: 3.00
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

MAT
: __Description__: tool for removing metadata
: http://mat.boum.org/
: GPLv2: https://gitweb.torproject.org/user/jvoisin/mat.git/tree/LICENSE/
: https://gitweb.torproject.org/user/jvoisin/mat.git
: 0.5.4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: command-line and GUI, with a library.

pdf-redact-tools
: __Description__: tools to redact and strip metadata from documents
: https://firstlook.org/code/project/pdf-redact-tools/
: GPLv3: https://github.com/firstlook/pdf-redact-tools/blob/master/LICENSE
: https://github.com/firstlook/pdf-redact-tools/
: 0.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

###<a id="mail">mail</a>###


Mailpile
: __Description__: fast webmail client with built-in security features
: http://www.mailpile.is/
: AGPLv3: https://github.com/mailpile/Mailpile/
: https://github.com/mailpile/Mailpile/
: beta III
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes:

Mixmaster
: __Description__: type II remailer for anonymous email
: http://mixmaster.sourceforge.net/
: MIT: https://anonscm.debian.org/viewvc/pkg-mixmaster/trunk/Mix/COPYRIGHT?view=markup
: http://sourceforge.net/projects/mixmaster/files/latest/download?source=files
: 3.0
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts: no
: notes: not under active development.

Mixminion
: __Description__: type III anonymous remailer
: http://mixminion.net/
: MIT: https://github.com/nmathewson/mixminion/blob/master/LICENSE/
: https://github.com/nmathewson/mixminion/
: 0.0.8alpha3
: FreeBSD: no*
: OpenBSD: no
: pkgsrc: yes
: DPorts: no
: notes: not under active development.

Torbirdy
: __Description__: Thunderbird add-on for using accessing email over the Tor network
: https://trac.torproject.org/projects/tor/wiki/torbirdy/
: BSD: https://gitweb.torproject.org/torbirdy.git/tree/LICENSE
: https://gitweb.torproject.org/torbirdy.git
: 0.1.4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: should Mozilla add-ons be their own ports? What about ugly /bin/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) installs which require shells/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) as dependencies?

###<a id="misc">misc</a>###

Kontalk server
: __Description__: encrypted communications platform
: http://www.kontalk.org/
: GPLv3: check each component under GitHub account
: https://github.com/kontalk/tigase-kontalk/
: n/a
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: only for smartphones? client and server component of Kontalk XMPP client

LEAP
: __Description__: secure server client platform
: https://leap.se/
: GPLv3 https://leap.se/git/{bitmask_client.git,leap_platform,git,etc}/blob/HEAD:/LICENSE
: https://leap.se/git
: n/a 
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: various components would needed for full porting, but starting point is likely the server.

Libertree
: __Description__: open-source platform for creating private social networks
: http://www.libertree.org/
: GNU Affero: https://github.com/Libertree/libertree/blob/master/LICENCE
: https://github.com/LiberTree/libertree/
: ?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

Martus Desktop
: __Description__: platform for collecting, safeguarding, organizing and sharing info
: https://www.martus.org/
: was on code.google.com, now?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

Martus Server
: __Description__: platform for collecting, safeguarding, organizing and sharing info
: https://www.martus.org/
: was on code.google.com, now?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

SecureDrop
: __Description__: open-source whistleblower submission system
: https://securedrop.org/
: AGPL
: https://github.com/freedomofpress/securedrop/
: 0.3.6
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: topology review is probably first step.

SparkleShare
: __Description__: Git-based file synchronization tool
: http://sparkleshare.org/
: GPLv3: https://github.com/hbons/SparkleShare/blob/master/legal/License_for_SparkleShare.txt
: https://github.com/hbons/SparkleShare/
: 1.4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: essentially a GUI for git with server and client components

Syncany
: __Description__: open-source cloud storage and filesharing application
: https://www.syncany.org/
: GPLv3
: https://github.com/syncany/syncany/
: 0.4.7-alpha
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

Turtl: server, client
: __Description__: encrypted personal database and note-taking application
: https://turtl.it/
: GPLv3: https://github.com/turtl/api/blob/master/LICENSE/
: https://github.com/turtl/
: 0.5.2.2
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: various components for the platform in GitHub.

###<a id="net">net</a>###

arm/nyx
: __Description__: terminal status monitor for Tor
: https://www.atagar.com/arm/
: https://gitweb.torproject.org/nyx.git/tree/LICENSE
: https://gitweb.torproject.org/nyx.git
: 1.4.5.0
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts: no
: notes:

blockfinder
: __Description__: tool for enumerating network information by country
:
: BSD: https://github.com/ioerror/blockfinder/blob/master/LICENSE/
: https://github.com/ioerror/blockfinder/
: 3.1?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

OnionShare
: __Description__: secure and anonymous file-sharing tool
: https://onionshare.org/
: GPLv3: https://github.com/michahflee/onionshare/blob/master/LICENSE
: 0.7.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

ooni-probe
: __Description__: network measurement framework for detecting network interference
: https://ooni.torproject.org/
: BSD: https://gitweb.torproject.org/onionoo.git/tree/LICENSE
: https://github.com/TheTorProject/ooni-probe/
: 1.3.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

Ring client and server
: __Description__: open source communications platform
: https://ring.cx/
: git https://gerrit-ring.savoirfairelinux.com/ projects
: GPLv3: https://ring.cx/en/documentation/about-ring/
: n/a
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: various components for the platform

Syncthing
: __Description__: open-source cloud storage and synchronization
: https://syncthing.net/
: MPLv2
: https://github.com/syncthing/syncthing/
: 0.12.3
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: yes
: DPorts: no
: notes: in FreeBSD ports but not DragonFly BSD?

Tor
: __Description__: stable version of the onion-routing daemon for anonymous networking
: https://www.torproject.org/
: BSD: https://gitweb.torproject.org/tor.git/tree/LICENSE
: https://gitweb.torproject.org/tor.git/
: 0.6.10
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

Tor alpha
: __Description__: development version of the onion-routing daemon for anonymous networking
: https://www.torproject.org/
: BSD: https://gitweb.torproject.org/tor.git/tree/LICENSE/
: https://gitweb.torproject.org/tor.git/
: 0.2.7.4rc
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: yes
: DPorts: yes
: notes: The alpha version is worth considering for production since it's stable and often the most effective in terms of circumvention counter-measures. OpenBSD does not include alpha or development versions of software in their ports

Torsocks
: __Description__: SOCKS proxy for routing TCP applications through the Tor network
: https://www.torproject.org/
: GPLv2: https://gitweb.torproject.org/torsocks.git/tree/LICENSE/
: https://gitweb.torproject.org/torsocks.git/
: 2.1.0
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes: relies on torrc SOCKS port matching torsocks configuration.

Torstatus
: __Description__: tool for aggregating and presenting public information about the Tor network
: n/a
: BSD: https://gitweb.torproject.org/torstatus.git/tree/doc/LICENSE
: https://gitweb.torproject.org/torstatus.git/
: n/a
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: outputs to www with Django for easy presentation and queries on the network.

###<a id="net-im">net-im</a>###

Cryptocat
: __Description__: accessible chat client
: https://crypto.cat/
: GNU Affero: https://github.com/cryptocat/cryptocat/blob/master/LICENSE.txt
: https://github.com/cryptocat/cryptocat/
: 2.2.2
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: little activity since 201412

Jitsi
: __Description__: XMPP/SIP client
: https://jitsi.org/
: Apache 2.0: https://github.com/jitsi/jitsi/blob/master/LICENSE
: https://github.com/jitsi/jitsi/
: 2.8.5426
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: Java-based

Ricochet
: __Description__: instant messaging client
: https://ricochet.im
: BSD: https://github.com/ricochet-im/ricochet/blob/master/LICENSE
: https://github.com/ricochet-im/ricochet/
: 1.1.1
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

TorChat2
: __Description__: peer-to-peer instant messenger running on Tor hidden services
: https://github.com/prof7bit/TorChat/wiki/
: GPLv3: https://en.wikipedia.org/wiki/TorChat
: https://github.com/prof7bit/TorChat/
: 15
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: license file?

Tor Messenger
:  __Description__: instant messenger for anonymity utilizing existing protocols
: n/a
: GPLv2: https://github.com/rovemonteux/tormessenger/blob/master/LICENSE
: https://gitweb.torproject.org/tor-messenger-build.git
: 0.1.0b4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: requires Docker and a bunch of Perl modules. Early stages of dev. License reference is from old GitHub account, so may be inaccurate.

Tox/uTox
: __Description__: UDP-based communications platform
: https://tox.chat
: https://github.com/irungentoo/toxcore
: GPLv3: https://github.com/irungentoo/toxcore/blob/master/COPYING
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: FreeBSD builds available on www

vuvuzela
: __Description__: private messaging system that hides metadata
: License: GPLv3 https://github.com/davidlazar/vuvuzela/blob/master/LICENSE 
: https://github.com/davidlazar/vuvuzela
: Version: 0.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: in early stages of development. [SOSP 2015 Paper](https://davidlazar.org/papers/vuvuzela.pdf) and [SOSP 2015 Slides](https://davidlazar.org/slides/vuvuzela-sosp2015.pdf)


###<a id="net-p2p">net-p2p</a>###

Bitmessage
: __Description__: https://bitmessage.org/wiki/Main_Page
: MIT: https://github.com/Bitmessage/PyBitmessage/blob/master/LICENSE
: https://github.com/Bitmessage/PyBitMessage
: Version: 0.4.4
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes:

RetroShare
: __Description__: secure, decentralized P2P platform
: http://retroshare.sourceforge.net
: GPLv3: http://retroshare.sourceforge.net/wiki/index.php/Main_Page
: https://github.com/RetroShare/RetroShare
: 0.6.0 RC2.8551
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts: no
: notes: why not in DPorts if it's in FreeBSD ports?

###<a id="security">security</a>###

gpg4usb
: __Description__: portable editor for encrypting and decrypting files
: http://www.gpg4usb.org
: GPLv3: https://github.com/gpg4usb/gpg4usb/blob/master/COPYING
: https://github.com/gpg4usb/gpg4usb
: 0.3.3-1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

KeePassX
: __Description__: password management utility
: http://www.keepassx.org/
: various: https://github.com/keepassx/keepassx/
: https://github.com/keepassx/keepassx/
: 2.0 Beta 2
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

obfsproxy
: __Description__: pluggable transport for Tor
: n/a
: BSD: https://gitweb.torproject.org/pluggable-transports/obfsproxy.git/tree/LICENSE
: 0.2.13
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: 
: DPort:
: notes: 

Pond
: __Description__: forward secure, asynchronous messaging
: https://pond.imperialviolet.org
: BSD: https://github.com/agl/pond/blob/master/LICENSE
: 0.1.1
: https://github.com/agl/pond/
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: in DPorts yet it's in FreeBSD ports

Scallion
: __Description__: GPU-basd Onion hash generator
: n/a
: BSD: https://github.com/lachesis/scallion/blob/gpg/LICENCE.txt
: 1.2
: https://github.com/lachesis/scallion/
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: useful for creating custom or "vanity" GPG keys or .onion addresses

sslyze
: __Description__: full-featured SSL scanner
: GPLv2: https://github.com/nabla-c0d3/sslyze/blob/master/LICENSE.txt
: https://github.com/nabla-c0d3/sslyze
: 0.10
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

###<a id="sysutils">sysutils</a>###

tlsdate
: __Description__: secure parasitic rdate replacement
: n/a
: BSD: https://github.com/ioerror/tlsdate/blob/master/LICENSE
: https://github.com/ioerror/tlsdate/
: 0.0.13
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes:

###<a id="www">www</a>###

HTTPS Everywhere
: __Description__: Firefox add-on
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: /bin/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) inst
all script, and therefore a frivilous dependency

NoScript
: __Description__: Firefox add-on for blocking scripts
: https://noscript.net/
: GPLv3: https://noscript.net/faq#qa1_14
: 2.6.9.39
: notes: Mozilla add-ons as ports?

sigbin
: __Description__: web application for storing PGP-signed messages
: none
: GPLv3: https://github.com/firstlook/sigbin/blob/master/LICENSE.md
: https://github.com/firstlook/sigbin/
: n/a
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: very early stages of development

Tor Browser
: __Description__: Firefox-based browser for using the Tor anonymity network
: https://www.torproject.org/projects/torbrowser.html.en
: various: https://gitweb.torproject.org/tor-browser.git/tree/toolkit/content/license.html?h=esr24
: https://gitweb.torproject.org/tor-browser.git/
: 5.0.4
: FreeBSD: no
: OpenBSD: no, [well...](https://github.com/torbsd/openbsd-ports)
: pkgsrc: no
: DPorts: no
: notes: A lot of effort is going into __TDP's__ Tor Browser builds for OpenBSD, and we are in conversations about porting to other BSDs.


{{footer.md}}

