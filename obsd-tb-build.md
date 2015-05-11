Title: Instructions for Building the OpenBSD Port of Tor Browser
CSS: torbsd.css
Author: gman999
Date: 20150509
Note: above is markdown data, edit or leave alone.

# Building the Development Version of the OpenBSD Tor Browser Port #

amd64/snapshots only?

These instructions are aimed at an audience interested in building the OpenBSD Tor Browser for the desktop/laptop client computer. For those interested in more comprehensive testings, buildings packages, etc., please refer to our [OpenBSD Build Box piece](obsd-buildbox.html].

As there is currently no binary, pre-built package available, it is necessary to compile the Tor Browser from source. Depending on hardware specifications, this will take a while.

Skipping any of these steps will likely result in failure. And since the port is in development and has a lot of moving parts, it may just break anyways.

## Preparations ##

* Install OpenBSD ports tree into the default /usr/ports location as [per the FAQ instructions](http://www.openbsd.org/anoncvs.html) on a recent snapshot of OpenBSD

* As the OpenBSD ports tree will need to current and regularly update, add the appropriate remote CVS root to ~/.profile: "export CVSROOT=anoncvs@...:/cvs"

* Create a "mystuff" directory at /usr/ports/mystuff where the Git repository will be located: "mkdir -p /usr/ports/mystuff"

* Create a "pobj" which OpenBSD uses to compile ports: "mkdir -p /usr/ports/pobj", which we will later add as a tmpfs mount

* To ease cloning the Git repository, change the permissions on /usr/ports/mystuff with "chown -R _your user_ /usr/ports/mystuff"

* Firefox and the associated dependencies can employ a lot of disk space when compiling from source.  The main directory to be concerned with is /usr/ports/pobj. With sufficient RAM, a shortcut to bypass filling the /usr/ports/pobj partition is to use mount_tmpfs(8). Type "mount -t tmpfs tmpfs /usr/ports/"s which will produce a large tmpfs mount.

* To maintain a tmpfs mount after reboots for /usr/ports/pobj, add the following line to the /etc/fstab file: "swap /usr/ports/pobj tmpfs rw 0 0"

Once mounted, a df(1) output might look something like this:

tmpfs         20931536   3232176  17699360    15%    /usr/ports/pobj

## Cloning the Git Repository ##

* Note that git(1) commands can be run over Tor with torsocks(1) which can be installed from packages or /usr/ports/net/torsocks.

* To add a copy of the OpenBSD Tor Browser repository to /usr/ports/mystuff, type "git clone git://github.com/torbsd/openbsd-ports /usr/ports/mystuff"

* Confirm that /usr/ports/mystuff/www/tbb is populated.

## Installing Tor Browser ##

* From /usr/ports/mystuff/www/tbb/tor-browser, run "make install"

* Alternately, to get a measure of the time to build the port, run "time make install"

## Updating the Port ##

* To update the local copy from the Git repository, run "cd /usr/ports/mystuff && git pull"

* To update the ports tree, "cd /usr && cvs up -Pd"

?? make -j on OBSD?
