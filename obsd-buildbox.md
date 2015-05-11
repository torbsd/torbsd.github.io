iTitle: Instructions for Building the OpenBSD Port of Tor Browser
CSS: torbsd.css
Author: gman999
Date: 20150509
Note: above is markdown data, edit or leave alone.

# OpenBSD Build/Test Box for Tor Browser #

Desktops are slow, servers are (supposed to be) fast. For testing builds, keeping the port in sync with the GitHub repository, the OpenBSD ports tree, creating and updating package. This also requires keeping base operating system, the ports tree and the Tor Browser repository updated with each new build. 

Assuming decent specs with multi-cores, >8Gb of RAM

* Install OpenBSD snapshot

* Populate the ports tree with:

cd /usr && cvs -d anoncvs@anoncvs.comstyle.com:/cvs get -P ports

* Is /usr big enough? 2G isn't

* Create a tmpfs mount for /usr/ports/pobj in /etc/fstab

+swap /usr/ports/pobj tmpfs rw 0 0

* Install Git, Tor and Torsocks packages, the latter two assuming GitHub' pulls are accessed over Tor. At this end of the install, there will be many, many more packages installed.

pkg_add -r git

pkg_add -r tor

pkg_add -r torsocks

* Clone Tor Browser repository

cd /usr/ports/mystuff && git clone https://github.com/torbsd/openbsd-ports

* Future Builds

As the Tor Browser port is in regular development, keeping the port builds updated requires updating the OpenBSD snapshot in use, the ports tree and Tor Browser repository on GitHub. Note that after the required dependencies are installed, subsequent Tor Browser builds will be significantly faster.

* To keep the ports tree updated after the initial checkout:
cd /usr/ports && cvs up -Pd

* To update Github's openbsd-ports repository:
cd /usr/ports/mystuff && git pull

? make -j .. time(1)

pkg_create(1)
