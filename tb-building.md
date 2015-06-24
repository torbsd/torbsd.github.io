Title: The Tor-BSD Diversity Project : Tor Browser Building
CSS: torbsd.css
Author: gman
Editors: attila
Date: 2015-06-24
Note: These lines at the top are multimarkdown metadata; leave them.

{{header.md}}

## Tor BSD Diversity Project Guide for Building Tor Browser i386/amd64 ##

This document provides the current port build instructions for Tor Browser on OpenBSD. Neeless to say, the host should be relatively isolated from the internet or hostile networks due to the login.conf settings. These directions should not only build the port, but also create the respective packages.

Build host preparation

* updated -current with updated ports tree

* a sufficiently large (~15G?) /usr/ports/pobj partition, or at least enough space on /usr/ports

* add a "builder" group to /etc/group

* /etc/login.conf

builder:\
	:datasize=infinity:\
	:vmemoryuse=infinity:\
	:memoryuse=infinity:\
	:memorylocked=infinity:\
	:maxproc=infinity:\
	:stacksize=infinity:\
	:openfiles=infinity:\
	:cputime=infinity:\
	:tc=staff:

From home directory:

git clone https://github.com/torbsd/openbsd-port

mkdir -p /usr/ports/mystuff/www

cd openbsd ports; tar -cf - www | tar -C /usr/ports/mystuff -xf -

cd /usr/ports/mystuff/www/tbb

make install

Packages should be deposited in /usr/ports/packages.


{{footer.md}}

