Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Data: 2015-11-17
X-Note: These lines at the top are multimarkdown metadata; leave them.


{{header.md}}
##Porting Targets for PETs##

There is a long list of applications spawned by the interest in privacy and anonymity solutions over the past several years.

This is a list of some of those applications. Most have not been ported to any of the BSDs. Some probably *shouldn't* be ported to the BSDs or any other sane operating system. But this list is an attempt to summarize the applications and provide relevant information for any *BSD developer interested in reviewing or porting them.

The listed information should be considered a guide but should be confirmed due to our mistakes or changes. Please use the [web site's "issues" page for any edits](https://github.com/torbsd/torbsd.github.io/issues/).

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
: FreeBSD 
: OpenBSD
: pkgsrc
: DPorts
: notes:

ExifTool 
: tool for editing, reading, writing metadata on a variety of file types 
: http://owl.phy.queensu.ca/~phil/exiftool/
: Perl: either GPL v1 or later or Artistic License
: http://owl.phy.queensu.ca/~phil/exiftool/Image-ExifTool-10.05.tar.gz
: 10.05
: FreeBSD: https://freshports.org/graphics/p5-Image-ExifTool-devel/
: OpenBSD: 
: pkgsrc: 
: DPorts: https://github.com/DragonFlyBSD/DPorts/tree/master/graphics/p5-Image-ExifTool-devel/
: notes:


Exiv2
: command-line utility to manage image metadata
: http://www.exiv2.org
: GPLv2 or commercial
: http://www.exiv2.org/exiv2-0.25.tar.gz
: 0.25
: FreeBSD: https://freshports.org/graphics/exiv2/
: OpenBSD
: pkgsrc: http://ftp.netbsd.org/pub/pkgsrc/current/pkgsrc/graphics/exiv2/README.html
: DPorts: https://github.com/DragonFlyBSD/DPorts/tree/master/graphics/exiv2/
: notes:

jhead
: tool for manipulating JPEG EXIF files
: http://www.sentex.net/~mwandel/jhead/
: public domain
: http://www.sentex.net/~mwandel/jhead/jhead-3.00.tar.gz
: 3.00
: FreeBSD: https://freshports.org/graphics/jhead/
: OpenBSD: 
: pkgsrc: http://ftp.netbsd.org/pub/pkgsrc/current/pkgsrc/graphics/jhead/README.html
: DPorts:
: notes:

pdf-redact-tools
: tools to redact and strip metadata from documents
: https://firstlook.org/code/project/pdf-redact-tools/
: GPL v3
: https://github.com/firstlook/pdf-redact-tools/
: 0.1
: FreeBSD
: OpenBSD
: pkgsrc
: DPorts
: notes:

autocanary
: desktop application for generating machine-readable, signed canary statements
: https://firstlook.org/code/project/autocanary
: GPL v3
: https://github.com/firstlook/autocanary/
: 0.1
: FreeBSD
: OpenBSD
: pkgsrc
: DPorts
: notes:

sigbin
: web application for storing PGP-signed messages
: none
: GPL v3
: https://github.com/firstlook/sigbin/
: ?
: FreeBSD
: OpenBSD
: pkgsrc
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

torbirdy
: Thunderbird add-on for using accessing email over the Tor network
: https://trac.torproject.org/projects/tor/wiki/torbirdy/
: see LICENSE
: https://gitweb.torproject.org/torbirdy.git
: 0.1.4
: FreeBSD
: OpenBSD
: pkgsrc
: DPorts

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

HTTPS Everywhere
: Firefox add-on
: FreeBSD
: OpenBSD
: pkgsrc
: DPorts
: notes: /bin/bash install script

Jitsi
: XMPP/SIP client
: https://jitsi.org
: Apache
: https://download.jitsi.org/jitsi/src/
: 2.8.5426
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts

Ricochet
: instant messaging client
: https://ricochet.im
: BSD-like
: https://github.com/ricochet-im/ricochet/
: 1.1.1
: FreeBSD
: OpenBSD: no
: pkgsrc: no
: DPorts

noscript
: Firefox add-on

Etherpad
: collaborative editing application
: http://etherpad.org
: Apache 2.0
: https://github.com/ether/etherpad-lite
: 1.5.7
: FreeBSD: no
: OpenBSD: no
: pkgsrc
: DPorts

EtherCalc
: collaborative spreadsheet application
: https://ethercalc.net
: CPAL 1.0 Artistic License 2.0
: https://github.com/audreyt/ethercalc
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts

Turtl: server, client
: personal database and note-taking application
: GPLv3?
: https://turtl.it
: 0.5.2.2
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts

gpg4usb
: portable editor for encrypting and decrypting files
: http://www.gpg4usb.org
: GPLv3
: https://github.com/gpg4usb/gpg4usb
: 0.3.3-1
: FreeBSD: no
: OpenBSD: no
: pkgsrc
: DPorts

Whiteout Mail
: https://whiteout.io/technology.html
: FreeBSD
: OpenBSD
: pkgsrc
: DPorts

Mailpile
: http://www.mailpile.is
: https://github.com/mailpile/Mailpile
: FreeBSD
: OpenBSD
: pkgsrc
: DPorts

Bitmessage
: https://bitmessage.org/wiki/Main_Page
: MIT
: https://github.com/Bitmessage/PyBitMessage
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts

Pond
: https://pond.imperialviolet.org
: see LICENSE
: https://github.com/agl/pond/
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts

RetroShare
: http://retroshare.sourceforge.net
: various
: https://github.com/RetroShare/RetroShare/
: FreeBSD: yes
: OpenBSD: yes
: pkgsrc: no
: DPorts

ChatSecure
: https://www.chatsecure.org
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts
: https://github.com/chatsecure

Kontalk client and server
: https://github.com/kontalk
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts


SparkleShare
: Git-based file synchronization tool
: http://sparkleshare.org
: GPLv3
: https://github.com/hbons/SparkleShare
: 1.4
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts

Ring
: https://ring.cx
: no source, only clients?
: FreeBSD
: OpenBSD: no
: pkgsrc
: DPorts

Tox
: UDP-based communications platform
: https://tox.chat
: https://github.com/irungentoo/toxcore
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: no
: DPorts

Syncany
: open-source cloud storage and filesharing application
: https://www.syncany.org
: GPLv3
: https://github.com/syncany/syncany
: 0.4.7-alpha
: FreeBSD: no
: OpenBSD: no
: pkgsrc: no
: DPorts

Syncthing
: open-source cloud storage and synchronization
: https://syncthing.net
: MPLv2
: https://github.com/syncthing/syncthing
: 0.12.3
: FreeBSD: yes
: OpenBSD: no
: pkgsrc: yes
: DPorts

Libertree
: open-source platform for creating private social networks
: http://www.libertree.org
: GPLv3
: https://github.com/LiberTree/libertree
: FreeBSD
: OpenBSD
: pkgsrc
: DPorts
sslyze
: full-featured SSL scanner
: 
: GPLv2
: https://github.com/nabla-c0d3/sslyze
: 0.10

ooni-probe
: network measurement framework for detecting network interference
: https://ooni.torproject.org
: BSD-like, see LICENSE
: https://github.com/TheTorProject/ooni-probe/
: 1.3.1

blockfinder
: tool for enumerating network information by country
: 
: BSD-like, see LICENSE
: https://github.com/ioerror/blockfinder/
: 3.1?

Martus Desktop
: platform for collecting, safeguarding, organizing and sharing info
: https://www.martus.org
: was on code.google.com, now?

Martus Server
: platform for collecting, safeguarding, organizing and sharing info
: https://www.martus.org
: was on code.google.com, now

SecureDrop
: open-source whistleblower submission system
: https://securedrop.org/
: AGPL
: https://github.com/freedomofpress/securedrop/
: 0.3.6

to add:

github.com/ioerror

github.com/SilentCircle

github.com/TheTorProject

github.com/freedomofpress






{{footer.md}}

