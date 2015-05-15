iTitle: Instructions for Building the OpenBSD Port of Tor Browser
CSS: torbsd.css
Author: gman999
Date: 20150509
Note: above is markdown data, edit or leave alone.

# OpenBSD Build/Test Box for Tor Browser #

This piece is aimed at those looking to test the Tor Browser port. Full instructions for configuring the OpenBSD system are included, keeping the system updated, plus creating a Tor Browser package. While any system could be used for this purpose, it is strongly recommended that the specifications include at least 8Gb of RAM and a 1Tb hard disk.

* Install OpenBSD snapshot

* OpenBSD is restrictive on how much resources such as open file descriptors that each user or daemon can utilize.  Therefore, it is necessary to make some system changes to allow something as enormous as building the Tor Browser on OpenBSD.

* For partitions creation, do a manual setup.

Add a separate partition for /usr/ports/pobj 20Gb in size.

/usr should also be around 10G.

In the event of smaller hard disks, tmpfs can be considered for /usr/ports/pobj, although any preexisting files will disappear on reboots.

$ mount -t tmpfs tmpfs /usr/ports/pobj

* A Builders Group to Reduce System Limits

Create a group in /etc/group entitled "builders" and add the non-privileged user

+builders:*:32768:root,<your_user>

A new login class entitled "builders" for the builders group is created, limits dropped in /etc/login.conf and the file is regenerated and the build user is added to the group.

+builders:\  
>+        :datasize-cur=infinity:\  
>+        :datasize-max=infinity:\  
>+        :filesize-max=infinity:\  
>+        :stacksize-max=infinity:\  
>+        :maxproc-max=infinity:\  
>+        :maxproc-cur=256:\  
>+        :memorylocked-max=infinity:\  
>+	 :memoryuse-max=infinity:\  
>+   	 :vmemoryuse-max=infinity:\  
>+        :openfiles-max=infinity:\  
>+        :tc=default:  

* Install Git, Tor and Torsocks packages, the latter two assuming GitHub' pulls
are accessed over Tor. At this end of the install, there will be many, many more
 packages installed.

pkg_add -r git

pkg_add -r tor

pkg_add -r torsocks

* Instructions for configurating Tor and torsocks are included, for those who want to pull from GitHub anonymously.

* /etc/rc.conf.local

ntpd_flags=
sndiod_flags=NO
smtpd_flags=NO
tor_flags="-f /etc/tor/torrc"

* /etc/tor/torrc

SocksPort 9050

Log notice file /var/log/tor

* Log file

touch /var/log/tor

chown _tor:_tor /var/log/tor

chmod 700 /var/log/tor

/etc/rc.d/tor start

To watch Tor start:

tail -f /var/log/tor

netstat -na | grep 9050

tcp          0      0  127.0.0.1.9050         *.*                    LISTEN

* Populate the Ports Tree

For more detailed instructions and to find an anoncvs server, see the [FAQ instructions](http://www.openbsd.org/anoncvs.html).

cd /usr && cvs -d anoncvs@anoncvs.comstyle.com:/cvs get -P ports

* Clone Tor Browser Repository with Git

cd /usr/ports/mystuff && git clone https://github.com/torbsd/openbsd-ports

/usr/ports/mystuff should be populated with:

mystuff/
	CVS/
	openbsd-ports/
	x11/

The Tor Browser build files are in openbsd-ports/www/tbb

* Performing the Build

cd /usr/ports/mystuff/openbsd-ports/www/tbb/

make install

or to allow more four synchronous processes:

make -j 4 install

To calculate the build time, use time(1):

time make -j 4 install

The initial build will take a while, but once the dependencies and build dependencies are installed, future builds will be significantly faster.

* Future Builds

As the Tor Browser port is in regular development, keeping the port builds updated requires updating the OpenBSD snapshot in use, the ports tree and Tor Browser repository on GitHub. Note that after the required dependencies are installed, subsequent Tor Browser builds will be significantly faster.

* To keep the ports tree updated after the initial checkout:
$cd /usr/ports && cvs up -Pd

* To update Github's openbsd-ports repository:
cd /usr/ports/mystuff && git pull (or "torsocks git pull" to perform over Tor)

pkg_create(1)
