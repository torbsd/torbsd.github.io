Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Data: 2015-10-30
X-Note: These lines at the top are multimarkdown metadata; leave them.


{{header.md}}

##Porting Tor Browser to OpenBSD##

__TDP's__ flagship project is porting [Tor Browser](https://www.torproject.org/projects/torbrowser.html.en) to [OpenBSD](http://www.openbsd.org).

There are currently Tor Browser (TB) builds available for Windows, Apple's OSX, Linux and Android operating systems. There is no support for any of the BSD Unixes.

###Installing and Using TB on OpenBSD###

__TDP's__ TB is currently development, therefore it should not be relied upon for strong anonymity and privacy.

ers

###Why OpenBSD?###

OpenBSD is not running on millions of desktops, laptops or other similar client-end devices. Nevertheless, there is a strong case for OpenBSD to be the initial platform for porting TB.

Much of this piece is derived from [OpenBSD's Project Goals](http://www.openbsd.org/goals.html).

####OpenBSD's Strict Focus on Security Through Clean Code####

"Hacks" and workarounds are not only discouraged, they are also not permitted. This makes porting OpenBSD-originating software easier. In cases in which OpenBSD is porting software from the "upstream," such as the Tor Brower, OpenBSD strongly endorses communicating those changes back to the original software developers.

####OpenBSD's Adherence to Standards####

Software built to common standards, such as [POSIX](http://pubs.opengroup.org/onlinepubs/9699919799/) and [ANSI](http://www.ansi.org/), makes porting their software to other POSIX operating systems easier.

####OpenBSD Builds Portable Tools####

OpenBSD builds tools for portability, many of which appear on other operating systems. [OpenSSH](http://www.openssh.com) is the most common tool for managing Unix servers remotely, bundled in systems and devices. It become ubiquitous not only because it's extremely secure, but also because the portable version makes incorporating into other systems relatively simple.

####OpenBSD Builds Tools to Make All Software Better####

Other OpenBSD tools can be ported that will make other software more secure. Programs such as [arc4random(3)](http://www.openbsd.org/cgi-bin/man.cgi?query=arc4random&apropos=0&sec=0&arch=default&manpath=OpenBSD-current), [libressl](http://www.libressl.org/) and [signify(1)](http://www.openbsd.org/cgi-bin/man.cgi/OpenBSD-current/man1/signify.1?query=signify) remove the need for bloated or sloppy solutions to basic problems. Take the example of [verifying the signatures of Tor Browser](https://www.torproject.org/docs/verifying-signatures.html.en) to confirm the Tor Browser download hasn't been tampered with. The instructions direct users to download [GnuPG](https://gnupg.org/), a large complex application that can provides functality far beyond just verifying software's digital fingerprints.

signify(1) is designed respecting the standard Unix principle as a tool which does one thing and does it right. Instead of having a user walk through instructions on how to download, install and use GnuPG, including signify(1) in an operating system can make the task simple and painless.

####OpenBSD's Licensing is Permissive####

BSD licenses are simple and clear, designed to be read and understood by anyone with thirty seconds to spare without the assistance of legal counsel. OpenBSD e




{{footer.md}}
