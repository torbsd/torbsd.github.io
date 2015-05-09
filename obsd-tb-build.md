Title: Instructions for Building the OpenBSD Port of Tor Browser
CSS: torbsd.css
Author: gman999
Date: 20150509
Note: above is markdown data, edit or leave alone.

# Building the Development Version of the OpenBSD Tor Browser Port #

amd64/snapshots only?

Note that skipping any of these steps will likely result in failure. And since the port is in development and has a lot of moving parts, it may just break anyways.

## Preparations ##

* Install OpenBSD ports tree into the default /usr/ports location as [per the FAQ instructions](http://www.openbsd.org/anoncvs.html) on a recent snapshot of OpenBSD

* Create a a "mystuff" directory at /usr/ports/mystuff

* To ease cloning the Git repository, change the permissions on /usr/ports/mystuff with "chown -R _your user_ /usr/ports/mystuff"

* Firefox and the associated dependencies can employ a lot of disk space when compiling from source.  The main directory to be concerned with is /usr/ports/pobj. With sufficient RAM, a shortcut to bypass filling the /usr/ports/pobj partition is to use mount_tmpfs(8). Type "mount -t tmpfs tmpfs /usr/ports/"s which will produce a large tmpfs mount.

Once mounted, a df(1) output might look something like this:

tmpfs         20931536   3232176  17699360    15%    /usr/ports/pobj

## Cloning the Git Repository ##

* Note that git(1) commands can be run over Tor with torsocks(1) which can be installed from packages or /usr/ports/net/torsocks.

* To add a copy of the OpenBSD Tor Browser repository to /usr/ports/mystuff, type "git clone git://github.com/torbsd/openbsd-ports /usr/ports/mystuff"

* Confirm that /usr/ports/mystuff/www/tbb is populated.

## Installing Tor Browser ##

* From /usr/ports/mystuff/www/tbb/tor-browser, run "make install"

## Updating the Port ##

* To update the local copy of the Git repository, run "git pull /usr/ports/mystuff"
