Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: attila
Editors: gman
Date: 2017-10-03
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

## Running tor in a chroot under OpenBSD ##

We take as our model
[the instructions in the TPO wiki](https://trac.torproject.org/projects/tor/wiki/doc/TorInChroot),
and have adapted them to suit [OpenBSD](https://www.openbsd.org).  For
reference, these instructions apply to OpenBSD-current as of 2017-10-03.

### Prelims ###

Packages needed:

* devel/autoconf-2.69
* devel/automake-1.15
* devel/libevent2 (most recent version fine)
* gmake (most recent version fine)
* tor source

#### Patches ####

The `net/tor` port sometimes has patches that are necessary under
OpenBSD.  It is a good idea to apply them, e.g.:

    $ patch < /usr/ports/net/tor/patches/patch-src_ext_ed25519_donna_ed25519-donna-portable_h

### Build ###

    $ env AUTOCONF_VERSION=2.69 AUTOMAKE_VERSION=1.15 sh autogen.sh
    $ ./configure --prefix=/tor --disable-asciidoc
    $ gmake

### Setup Chroot ###

    $ doas useradd -d /home/tor -s /sbin/nologin -u 9999 tor
    $ doas mkdir /home/tor
    $ doas chown tor:tor /home/tor
    $ doas gmake install prefix=$TORCHROOT/tor exec_prefix=$TORCHROOT
    $ doas mkdir $TORCHROOT/lib
    $ doas cp `ldd $TORCHROOT/tor/bin/tor | sed -e 1,3d | awk '{print $7}'` $TORCHROOT/lib
    $ doas mkdir $TORCHROOT/dev
    $ doas mknod -m 644 $TORCHROOT/dev/random c 45 0
    $ doas mknod -m 644 $TORCHROOT/dev/urandom c 45 2
    $ doas mknod -m 666 $TORCHROOT/dev/null c 2 2
    $ doas sh -c "grep ^tor /etc/passwd > $TORCHROOT/etc/passwd"
    $ doas cp $TORCHROOT/tor/etc/tor/torrc.sample $TORCHROOT/tor/etc/tor/torrc
