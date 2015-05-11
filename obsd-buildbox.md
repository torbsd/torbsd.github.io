iTitle: Instructions for Building the OpenBSD Port of Tor Browser
CSS: torbsd.css
Author: gman999
Date: 20150509
Note: above is markdown data, edit or leave alone.

# OpenBSD Build/Test Box for Tor Browser #

Desktops are slow, servers are (supposed to be) fast. For those interested in doing more than just compiling the current version of OpenBSD Tor Browser, a full server configuration might be of-interest. This might include testing builds, keeping the port in-sync with the [GitHub repository]{https://github.com/torbsd/openbsd-ports), maintaining a current OpenBSD ports tree, creating and updating the package. This also requires keeping base operating system, the ports tree and the Tor Browser repository updated with each new build. 

Assuming decent specs with multi-cores, >8Gb of RAM

* Install OpenBSD snapshot

* OpenBSD is sanely restrictive on how much resources each users can utilize.  Therefore, it is necessary to make some system changes to allow something as collassal as building the Tor Browser on OpenBSD.

A new login class entitled "builders" is created, limits dropped in /etc/login.conf and the file is regenerated and the build user is added to the group.

builders:\
        :datasize-cur=infinity:\
        :datasize-max=infinity:\
        :filesize-max=infinity:\
        :stacksize-max=infinity:\
        :maxproc-max=infinity:\
        :maxproc-cur=256:\
        :memorylocked-max=infinity:\
        :openfiles-max=infinity:\
        :tc=default:


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
