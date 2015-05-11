iTitle: Instructions for Building the OpenBSD Port of Tor Browser
CSS: torbsd.css
Author: gman999
Date: 20150509
Note: above is markdown data, edit or leave alone.

# OpenBSD Build/Test Box for Tor Browser #

Assuming decent specs with multi-cores, >8Gb of RAM

* Install OpenBSD snapshot

* Populate the ports tree with:

cd /usr && cvs -d anoncvs@anoncvs.comstyle.com:/cvs get -P ports

* Create a tmpfs mount for /usr/ports/pobj in /etc/fstab

+swap /usr/ports/pobj tmpfs rw 0 0

* Install Git, Tor and Torsocks packages

pkg_add -r git

pkg_add -r tor

pkg_add -r torsocks

* Clone Tor Browser repository

git clone https://github.com/torbsd/openbsd-ports /usr/ports/mystuff

? make -j .. time(1)
