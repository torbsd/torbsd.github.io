Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Data: 2015-11-17
X-Note: These lines at the top are multimarkdown metadata; leave them.


{{header.md}}
##Porting Targets for PETs##

There is a long list of applications spawned by the interest in privacy and anonymity solutions over the past several years. Most originated as an attempt to provide secure, open-source alternatives to common, proprietary solutions. Jitsi and Ricochet, for instance, arose as attempted replacements for Skype.

This is a list of some of those applications. Most have not been ported to any of the BSDs. Some probably *shouldn't* be ported to the BSDs or any other sane operating system. Some are unmaintained, or unmaintainable. Is shells/bash a dependency? Maybe a patch should be sent upstream before even considering a port. But this list is an attempt to summarize the applications and provide relevant information for any *BSD developer interested in reviewing or porting them. __No endorsements should be assumed from this list.__

The listed information should be considered a guide but should be confirmed due to any inaccuracies or changes. Please use our [GitHub account's torbsd.github.io "issues" page for any edits](https://github.com/torbsd/torbsd.github.io/issues/).

tool-name
: short-descr
: www-site
: license
: source-path
: version
: FreeBSD
: OpenBSD
: pkgsrc
: DPorts
: notes

MAT
: tool for removing metadata from various file types
: https://mat.boum.org
: GPL v2
: https://gitweb.torproject.org/user/jvoisin/mat.git
: 0.5.4
: FreeBSD: no 
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes:

ExifTool 
: tool for editing, reading, writing metadata on a variety of file types 
: http://owl.phy.queensu.ca/~phil/exiftool/
: Perl: either GPL v1 or later or Artistic License
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
: GPLv2 or commercial
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
: public domain
: http://www.sentex.net/~mwandel/jhead/jhead-3.00.tar.gz
: 3.00
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

pdf-redact-tools
: tools to redact and strip metadata from documents
: https://firstlook.org/code/project/pdf-redact-tools/
: GPL v3
: https://github.com/firstlook/pdf-redact-tools/
: 0.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

autocanary
: desktop application for generating machine-readable, signed canary statements
: https://firstlook.org/code/project/autocanary
: GPL v3
: https://github.com/firstlook/autocanary/
: 0.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes:

sigbin
: web application for storing PGP-signed messages
: none
: GPL v3
: https://github.com/firstlook/sigbin/
: ?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes:

keepassx
: password management utility
: http://www.keepassx.org/
: GPL v 2 and various
: https://github.com/keepassx/keepassx/
: 2.0 Beta 2
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: yes
: DPorts: yes
: notes:

torbirdy
: Thunderbird add-on for using accessing email over the Tor network
: https://trac.torproject.org/projects/tor/wiki/torbirdy/
: see LICENSE
: https://gitweb.torproject.org/torbirdy.git
: 0.1.4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: should Mozilla add-ons be their own ports? What about ugly /bin/bash installs which require shells/bash as dependencies?

tlsdate
: secure parasitic rdate replacement
: https://trac.torproject.org/projects/tor/wiki/torbirdy/
: BSD-like, see LICENSE
: https://github.com/ioerror/tlsdate/
: 0.0.13
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes: 

HTTPS Everywhere
: Firefox add-on
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes: /bin/bash install script, and therefore a frivilous dependency

Jitsi
: XMPP/SIP client
: https://jitsi.org
: Apache
: https://download.jitsi.org/jitsi/src/
: 2.8.5426
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: Java-based as a shortcut to portability

Ricochet
: instant messaging client
: https://ricochet.im
: BSD-like
: https://github.com/ricochet-im/ricochet/
: 1.1.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes:

noscript
: Firefox add-on
: notes:

Etherpad
: collaborative editing application
: http://etherpad.org
: Apache 2.0
: https://github.com/ether/etherpad-lite
: 1.5.7
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes:

EtherCalc
: collaborative spreadsheet application
: https://ethercalc.net
: CPAL 1.0 Artistic License 2.0
: https://github.com/audreyt/ethercalc
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes:

Turtl: server, client
: personal database and note-taking application
: GPLv3?
: https://turtl.it
: 0.5.2.2
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes:

gpg4usb
: portable editor for encrypting and decrypting files
: http://www.gpg4usb.org
: GPLv3
: https://github.com/gpg4usb/gpg4usb
: 0.3.3-1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts 
: notes:

Whiteout Mail
: https://whiteout.io/technology.html
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts
: notes:

Mailpile
: http://www.mailpile.is
: https://github.com/mailpile/Mailpile
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes:

Bitmessage
: https://bitmessage.org/wiki/Main_Page
: MIT
: https://github.com/Bitmessage/PyBitMessage
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes:

Pond
: https://pond.imperialviolet.org
: see LICENSE
: https://github.com/agl/pond/
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes: why not in DPorts if it's in FreeBSD ports?

RetroShare
: http://retroshare.sourceforge.net
: various
: https://github.com/RetroShare/RetroShare/
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts: no
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

Tox/uTox
: UDP-based communications platform
: https://tox.chat
: https://github.com/irungentoo/toxcore
: n/a
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts: yes
: notes: FreeBSD builds available on www

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

sslyze
: full-featured SSL scanner
: GPLv2
: https://github.com/nabla-c0d3/sslyze
: 0.10
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts: no
: notes:

ooni-probe
: network measurement framework for detecting network interference
: https://ooni.torproject.org
: BSD-like, see LICENSE
: https://github.com/TheTorProject/ooni-probe/
: 1.3.1
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts

blockfinder
: tool for enumerating network information by country
: 
: BSD-like, see LICENSE
: https://github.com/ioerror/blockfinder/
: 3.1?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts

Martus Desktop
: platform for collecting, safeguarding, organizing and sharing info
: https://www.martus.org
: was on code.google.com, now?
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts

Martus Server
: platform for collecting, safeguarding, organizing and sharing info
: https://www.martus.org
: was on code.google.com, now
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts

SecureDrop
: open-source whistleblower submission system
: https://securedrop.org/
: AGPL
: https://github.com/freedomofpress/securedrop/
: 0.3.6
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts

to add:

github.com/ioerror

github.com/SilentCircle

github.com/TheTorProject

github.com/freedomofpress






{{footer.md}}

