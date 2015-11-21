Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Data: 2015-11-17
X-Note: These lines at the top are multimarkdown metadata; leave them.


{{header.md}}
##Porting Targets for PETs##

Over the past few years, a long list of applications spawn from the interest in privacy and anonymity solutions. Most originated as efforts to provide secure, open-source alternatives to common, proprietary solutions. Jitsi and Ricochet, for instance, arose as attempted replacements for Skype.

This is a list of some of those applications. Most have not been ported to any of the BSDs. Some probably *shouldn't* be ported to the BSDs or any other sane operating system. Some are unmaintained, or unmaintainable. Is shells/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) a dependency? Maybe a patch should be sent upstream before even considering a port. But this list is an attempt to summarize the applications and provide relevant information for any *BSD developer interested in reviewing or porting them. __No endorsements should be assumed from this list.__

The listed information should be considered a guide but should be confirmed due to any inaccuracies or changes. Please use our [GitHub account's torbsd.github.io "issues" page for any input](https://github.com/torbsd/torbsd.github.io/issues/).

*Just because it says "yes" next to a BSD ports system doesn't mean it's current or works correctly*

These are loose categorizations of the ports, where there is no consensus among the BSDs on category, we chose whichever was already ported, then the more general category, for example __net__ over __net-p2p__.

[editors](#editors)  &#8916; [graphics](#graphics) &#8916;  [mail](#mail) &#8916; [misc](#misc) &#8916; [net](#net) &#8916; [net-im](#net-im) &#8916; [net-p2p](net-p2p) &#8916; [security](#security) &#8916; [sysutils](#sysutils) &#8916; [www](#www)

tool-name
: short-descr
: www-site
: license: explicit license stated, along with URL to the actual
: source-path
: version
: FreeBSD: [FreeBSD ports system](https://svnweb.freebsd.org/ports/head/)
: OpenBSD: [OpenBSD packages](http://mirrors.nycbug.org/pub/OpenBSD/snapshots/packages), which generally also apply to BitRig
: pkgsrc: [NetBSD's pkgsrc](http://ftp.netbsd.org/pub/pkgsrc/current/pkgsrc/README.html) for multiple operating systems
: DPorts: [DragonFly BSD's ports](http://mirrors.nycbug.org/pub/DragonFlyBSD/dports/dragonfly:4.4:x86:64/LATEST//All/), similar to FreeBSD
: notes:

###<a id="editors">editors</a>###

AutoCanary
: desktop application for generating machine-readable, signed canary statements
: https://firstlook.org/code/project/autocanary
: GPLv3: https://github.com/firstlook/autocanary/blob/master/LICENSE.md
: https://github.com/firstlook/autocanary/
: 0.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

EtherCalc
: collaborative spreadsheet application
: https://ethercalc.net
: CPAL 1.0 Artistic License 2.0: https://github.com/audreyt/ethercalc/blob/master/LICENSE.txt
: https://github.com/audreyt/ethercalc
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

Etherpad
: collaborative editing application
: http://etherpad.org
: Apache 2.0: https://github.com/ether/etherpad-lite/blob/develop/LICENSE
: https://github.com/ether/etherpad-lite
: 1.5.7
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

###<a id="graphics">graphics</a>###

ExifTool
: tool for editing, reading, writing metadata on a variety of file types
: http://owl.phy.queensu.ca/~phil/exiftool/
: Perl: http://owl.phy.queensu.ca/~phil/exiftool/#license
: http://owl.phy.queensu.ca/~phil/exiftool/Image-ExifTool-10.05.tar.gz
: 10.05
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: yes
: DPorts: yes
: notes:

Exiv2
: command-line utility to manage image metadata
: http://www.exiv2.org
: GPLv2 or commercial: http://www.exiv2.org/download.html#license
: http://www.exiv2.org/exiv2-0.25.tar.gz
: 0.25
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

jhead
: tool for manipulating JPEG EXIF files
: http://www.sentex.net/~mwandel/jhead/
: Public Domain: http://www.sentex.net/~mwandel/jhead/
: http://www.sentex.net/~mwandel/jhead/jhead-3.00.tar.gz
: 3.00
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

MAT
: tool for removing metadata
: http://mat.boum.org
: GPLv2: https://gitweb.torproject.org/user/jvoisin/mat.git/tree/LICENSE
: https://gitweb.torproject.org/user/jvoisin/mat.git
: 0.5.4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: command-line and GUI, with a library.

pdf-redact-tools
: tools to redact and strip metadata from documents
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
: fast webmail client with built-in security features
: http://www.mailpile.is
: AGPLv3: https://github.com/mailpile/Mailpile
: https://github.com/mailpile/Mailpile
: beta III
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes:

Mixmaster
: type II remailer for anonymous email
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
: type III anonymous remailer
: http://mixminion.net
: MIT: https://github.com/nmathewson/mixminion/blob/master/LICENSE 
: https://github.com/nmathewson/mixminion/
: 0.0.8alpha3
: FreeBSD: no*
: OpenBSD: no
: pkgsrc: yes
: DPorts: no
: notes: not under active development.

Torbirdy
: Thunderbird add-on for using accessing email over the Tor network
: https://trac.torproject.org/projects/tor/wiki/torbirdy/
: BSD: https://gitweb.torproject.org/torbirdy.git/tree/LICENSE
: https://gitweb.torproject.org/torbirdy.git
: 0.1.4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: should Mozilla add-ons be their own ports? What about ugly /bin/[bash](
https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) installs which require sh
ells/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) as dependenci
es?

###<a id="misc">misc</a>###

###<a id="net">net</a>###

blockfinder
: tool for enumerating network information by country
:
: BSD: https://github.com/ioerror/blockfinder/blob/master/LICENSE
: https://github.com/ioerror/blockfinder/
: 3.1?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

OnionShare
: secure and anonymous file-sharing tool
: https://onionshare.org
: GPLv3: https://github.com/michahflee/onionshare/blob/master/LICENSE
: 0.7.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

ooni-probe
: network measurement framework for detecting network interference
: https://ooni.torproject.org
: BSD: https://gitweb.torproject.org/onionoo.git/tree/LICENSE
: https://github.com/TheTorProject/ooni-probe/
: 1.3.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:


Tor
: stable version of the onion-routing daemon for anonymous networking
: https://www.torproject.org
: BSD: https://gitweb.torproject.org/tor.git/tree/LICENSE
: https://gitweb.torproject.org/tor.git/
: 0.6.10
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

Tor alpha
: development version of the onion-routing daemon for anonymous networking
: https://www.torproject.org
: BSD: https://gitweb.torproject.org/tor.git/tree/LICENSE
: https://gitweb.torproject.org/tor.git/
: 0.2.7.4rc
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: yes
: DPorts: yes
: notes: The alpha version is worth considering for production since it's stable and often the most effective in terms of circumvention counter-measures. OpenBSD does not include alpha or development versions of software in their ports

Torsocks
: SOCKS proxy for routing applications through the Tor network
: https://www.torproject.org
: GPLv2: https://gitweb.torproject.org/torsocks.git/tree/LICENSE
: https://gitweb.torproject.org/torsocks.git/
: 2.1.0
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes: relies on torrc SOCKS port matching torsocks configuration.

Torstatus
: tool for aggregating and presenting public information about the Tor network
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
: accessible chat client
: https://crypto.cat/
: GNU Affero v3: https://github.com/cryptocat/cryptocat/blob/master/LICENSE.txt
: https://github.com/cryptocat/cryptocat/
: 2.2.2
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: little activity since 201412

Jitsi
: XMPP/SIP client
: https://jitsi.org
: Apache 2.0: https://github.com/jitsi/jitsi/blob/master/LICENSE
: https://github.com/jitsi/jitsi
: 2.8.5426
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: Java-based as a shortcut to portability

Ricochet
: instant messaging client
: https://ricochet.im
: BSD: https://github.com/ricochet-im/ricochet/blob/master/LICENSE
: https://github.com/ricochet-im/ricochet/
: 1.1.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

TorChat2
: peer-to-peer instant messenger running on Tor hidden services
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
: instant messenger for anonymity utilizing existing protocols
: n/
: GPLv2: https://github.com/rovemonteux/tormessenger/blob/master/LICENSE
: https://gitweb.torproject.org/tor-messenger-build.git
: 0.1.0b4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: requires Docker and a bunch of Perl modules. Early stages of dev. License reference is from old GitHub account, so may be inaccurate.

Tox/uTox
: UDP-based communications platform
: https://tox.chat
: https://github.com/irungentoo/toxcore
: GPLv3: https://github.com/irungentoo/toxcore/blob/master/COPYING
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: FreeBSD builds available on www

###<a id="net-p2p">net-p2p</a>###

Bitmessage
: https://bitmessage.org/wiki/Main_Page
: MIT: https://github.com/Bitmessage/PyBitmessage/blob/master/LICENSE
: https://github.com/Bitmessage/PyBitMessage
: 0.4.4
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes:

###<a id="security">security</a>###

gpg4usb
: portable editor for encrypting and decrypting files
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
: password management utility
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
: pluggable transport for Tor
: n/a
: BSD: https://gitweb.torproject.org/pluggable-transports/obfsproxy.git/tree/LICENSE
: 0.2.13
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: 
: DPort:
: notes: 

Pond
: forward secure, asynchronous messaging
: https://pond.imperialviolet.org
: BSD: https://github.com/agl/pond/blob/master/LICENSE
: 0.1.1
: https://github.com/agl/pond/
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: why not in DPorts if it's in FreeBSD ports?

sslyze
: full-featured SSL scanner
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
: secure parasitic rdate replacement
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
: Firefox add-on
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: /bin/[bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) inst
all script, and therefore a frivilous dependency

NoScript
: Firefox add-on for blocking scripts
: https://noscript.net/
: GPLv3: https://noscript.net/faq#qa1_14
: 2.6.9.39
: notes: Mozilla add-ons as ports?

sigbin
: web application for storing PGP-signed messages
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
: Firefox-based browser for using the Tor anonymity network
: https://www.torproject.org/projects/torbrowser.html.en
: various: https://gitweb.torproject.org/tor-browser.git/tree/toolkit/content/license.html?h=esr24
: https://gitweb.torproject.org/tor-browser.git/
: 5.0.4
: FreeBSD: no
: OpenBSD: no, [well...](https://github.com/torbsd/openbsd-ports)
: pkgsrc: no
: DPorts: no
: notes: A lot of effort is going into __TDP's__ Tor Browser builds for OpenBSD, and we are in conversations about looking at ports for other BSDs.

###Uncategorized, Yet###

Turtl: server, client
: encrypted personal database and note-taking application
: https://turtl.it
: GPLv3: https://github.com/turtl/api/blob/master/LICENSE
: https://github.com/turtl
: 0.5.2.2
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: various components for the platform in GitHub.

RetroShare
: http://retroshare.sourceforge.net
: various
: https://github.com/RetroShare/RetroShare
: notes: why not in DPorts if it's in FreeBSD ports?

Kontalk server
: http://www.kontalk.org
: ?
: https://github.com/kontalk/tigase-kontalk/
: n/a
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: server component of Kontalk XMPP client

SparkleShare
: Git-based file synchronization tool
: http://sparkleshare.org
: GPLv3
: https://github.com/hbons/SparkleShare
: 1.4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: essentially a GUI for git with server and client components

Ring
: https://ring.cx
: no source, only clients?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

Syncany
: open-source cloud storage and filesharing application
: https://www.syncany.org
: GPLv3
: https://github.com/syncany/syncany
: 0.4.7-alpha
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

Syncthing
: open-source cloud storage and synchronization
: https://syncthing.net
: MPLv2
: https://github.com/syncthing/syncthing
: 0.12.3
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: yes
: DPorts: no
: notes: in FBSD ports but not DFly?

Libertree
: open-source platform for creating private social networks
: http://www.libertree.org
: GPLv3
: https://github.com/LiberTree/libertree
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

Martus Desktop
: platform for collecting, safeguarding, organizing and sharing info
: https://www.martus.org
: was on code.google.com, now?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

Martus Server
: platform for collecting, safeguarding, organizing and sharing info
: https://www.martus.org
: was on code.google.com, now
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: 

SecureDrop
: open-source whistleblower submission system
: https://securedrop.org/
: AGPL
: https://github.com/freedomofpress/securedrop/
: 0.3.6
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: topology review is probably first step.

to add:

github.com/ioerror

github.com/SilentCircle

github.com/TheTorProject

github.com/freedomofpress

gajim: Jabber/XMPP client




{{footer.md}}

