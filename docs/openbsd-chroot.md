Title: The Tor BSD Diversity Project
CSS: ../torbsd.css
Author: attila
Editors: gman
Date: 2017-10-03
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{../meta.md}}

{{../header.md}}

## Running Tor in a chroot under OpenBSD ##

We take as our model
[the instructions in the TPO wiki](https://trac.torproject.org/projects/tor/wiki/doc/TorInChroot),
and have adapted them to suit [OpenBSD](https://www.openbsd.org).  We
assume basic Unix command-line skills.

For reference, these instructions apply to OpenBSD-current as of
2017-10-03.  The precise meaning of "current" is given in
[the FAQ on OpenBSD flavors](https://www.openbsd.org/faq/faq5.html#Flavors).

### Preliminaries ###

For our purposes in these instructions we assume you have the ports
tree unpacked under `/usr/ports`.  It is a good idea to read
[the anoncvs documentation](https://www.openbsd.org/anoncvs.html)
and follow its instructions for getting a copy of the ports tree.

For the rest of this guide we assume you have done this and that your
user ID is in the `wsrc` group and has R/W access to `/usr/ports` (as
covered in [the wsrc FAQ](https://www.openbsd.org/faq/faq5.html#wsrc)).

We will use the ports infrastructure to relieve us of worrying about
the mechanics of grabbing and verifying the code, and also of chasing
down dependencies.  As of this writing there is only one dependency
for Tor but as that changes these instructions should remain valid.

### Unpack, Patch ###

We'll now use the ports tree to grab the Tor source code, verify it is
the right stuff, unpack it and patch it if necessary.  We'll also
make sure any ports that Tor depends on are installed.

    $ cd /usr/ports/net/tor
    $ env SUDO=doas make patch

This will download, verify, extract and patch the tor source code and
leave it in a port-specific directory under the ports build area,
`/usr/ports/pobj`.  It will also ensure that everything needed to build
the port is installed.

### Build ###

Next, we change working directories to the root of the source tree
(that place under `/usr/ports/pobj` where `make patch` unpacked
things):

    $ cd `make show=WRKSRC`

The `make show=FOO` idiom is useful in the ports tree generally; it
shows you the full expansion of a
[make(1)](https://man.openbsd.org/make) variable used in the port's
Makefile.  The `WRKSRC` variable will contain the name of the working
source tree directory, which is where we want to go.  There is
comprehensive documentation on this and the other variables used in
ports Makefiles in the
[bsd.port.mk(5)](https://man.openbsd.org/bsd.port.mk) man page.

Note that we just used the ports tree to make sure we're starting with
code that is known to build and work under OpenBSD, we're not building
a package from the port as is normally done.

To build Tor for use in the chroot, do this after `cd`'ing to `WRKSRC`:

    $ ./configure --prefix=/tor
    $ make

### Basic Chroot Setup ###

There are several elements that must be taken into account:

* shared libraries;
* the password database;
* device nodes;
* directory structure and ownership;
* Tor configuration.

First off, set an environment variable to point at the base directory
of the chroot.  We use this everywhere in subsequent commands:

    $ TORCHROOT=/home/tor/chroot

Note that this only sets this variable in your current shell.  If you
switch terminals or shells then you'll have to set it again.

Add a "tor" user and home directory:

    $ doas useradd -d /home/tor -s /sbin/nologin tor
    $ doas mkdir /home/tor
    $ doas chown tor:tor /home/tor

Next, install the `tor` binary and support files we just compiled
into the chroot:

    $ doas make install prefix=$TORCHROOT/tor exec_prefix=$TORCHROOT/tor

We must deal with shared libraries both for the `tor` binary and for a
system utility that we will copy into the chroot,
[pwd_mkdb(8)](https://man.openbsd.org/pwd_mkdb).  We also need
[ldconfig(8)](https://man.openbsd.org/ldconfig) in the chroot:

    $ doas mkdir $TORCHROOT/sbin
    $ doas cp /sbin/ldconfig $TORCHROOT/sbin
    $ doas mkdir -p $TORCHROOT/usr/sbin
    $ doas cp /usr/sbin/pwd_mkdb $TORCHROOT/usr/sbin

We must copy all shared libraries that both `pwd_mkdb` and `tor` need
into the right places under the chroot.

    $ tar -C / -cf - \
        `ldd $TORCHROOT/tor/bin/tor | sed -e 1,3d | awk '{print substr($7,2)}'` | \
        doas tar -C $TORCHROOT -xf -
    $ tar -C / -cf - \
        `ldd $TORCHROOT/usr/sbin/pwd_mkdb | sed -e 1,3d | awk '{print substr($7,2)}'` | \
        doas tar -C $TORCHROOT -xf -

Since these two commands are quite long and have a similar structure I'll break them down:

* tar -C foo tells the [tar(1)](https://man.openbsd.org/tar) command to change directories to `foo` before doing anything else;
* the tar command at the start of each compound command is used to pack up shared libraries;
* the tar at the end of each command is used to unpack them in the chroot;
* the stuff in the middle produces the list of shared libraries we want to copy:
 * [ldd(1)](https://man.openbsd.org/ldd) spits out the raw list of shared libraries;
 * [sed(1)](https://man.openbsd.org/sed) removes the first three lines of output, which are noise for our purposes;
 * [awk(1)](https://man.openbsd.org/awk) pulls out the seventh whitespace-separated column and prints all but the first character.  This removes the leading slash in each shared library path (which is why we `-C /` to begin with).

After these two commands, all the shared libraries that `tor` and
`pwd_mkdb` depend on are in `$TORCHROOT/usr/lib` and
`$TORCHROOT/usr/local/lib`.  We must now run `ldconfig` in the chroot
to set up the `/var/run/ld.so.hints` file:

    $ doas mkdir -p $TORCHROOT/var/run
    $ doas chroot $TORCHROOT /sbin/ldconfig /usr/lib /usr/local/lib

Now that we have `pwd_mkdb` usable in the chroot, set up a minimal
password database:

    $ doas mkdir $TORCHROOT/etc
    $ doas sh -c "grep ^tor /etc/passwd > $TORCHROOT/etc/passwd"
    $ doas sh -c "grep ^tor /etc/group > $TORCHROOT/etc/group"
    $ doas sh -c "grep ^tor /etc/master.passwd > $TORCHROOT/etc/master.passwd"
    $ doas sh -c "grep ^_shadow /etc/group >> $TORCHROOT/etc/group"
    $ doas chroot $TORCHROOT /usr/sbin/pwd_mkdb /etc/master.passwd

Set up device nodes that `tor` needs:

    $ doas mkdir $TORCHROOT/dev
    $ doas mknod -m 644 $TORCHROOT/dev/random c 45 0
    $ doas mknod -m 644 $TORCHROOT/dev/urandom c 45 2
    $ doas mknod -m 666 $TORCHROOT/dev/null c 2 2

At this point the software and basic system configuration in the
chroot is complete.

### Configure Tor ###

Create a minimal Tor configuration in the chroot:

    $ doas sh -c "cat > $TORCHROOT/tor/etc/tor/torrc"
    User tor
    DataDirectory /var/lib/tor2
    GeoIPFile /tor/share/tor/geoip
    PidFile /var/run/tor/tor.pid
    Log notice file /var/log/tor/log
    ^D

Create the run-time directories needed by `tor` and make sure they are
owned by the `tor` user:

    $ doas mkdir -p $TORCHROOT/var/run/tor
    $ doas mkdir -p $TORCHROOT/var/lib/tor
    $ doas mkdir -p $TORCHROOT/var/lib/tor2
    $ doas chmod 700 $TORCHROOT/var/lib/tor2
    $ doas mkdir -p $TORCHROOT/var/log/tor
    $ doas chown tor:tor $TORCHROOT/var/run/tor
    $ doas chown tor:tor $TORCHROOT/var/lib/tor
    $ doas chown tor:tor $TORCHROOT/var/lib/tor2
    $ doas chown tor:tor $TORCHROOT/var/log/tor

### Start Tor ###

Finally, you should be able to start Tor in the chroot:

    $ doas chroot $TORCHROOT /tor/bin/tor

This should produce output that looks something like:

    Oct 04 16:46:55.116 [notice] Tor 0.3.0.10 (git-c33db290a9d8d0f9) running on OpenBSD with Libevent 2.0.22-stable, OpenSSL LibreSSL 2.6.3 and Zlib 1.2.3.
    Oct 04 16:46:55.116 [notice] Tor can't help you if you use it wrong! Learn how to be safe at https://www.torproject.org/download/download#warning
    Oct 04 16:46:55.126 [notice] Read configuration file "/tor/etc/tor/torrc".
    Oct 04 16:46:55.192 [notice] Opening Socks listener on 127.0.0.1:9050

It will also produce a verbose log of its operation in `$TORCHROOT/var/log/tor/log`.

You can interrupt Tor when run this way by pressing ^C.  If you want
Tor to fork into the background and run as a daemon, add one more line
to your torrc file:

    $ doas sh -c "echo RunAsDaemon 1 >> $TORCHROOT/tor/etc/tor/torrc"

If you start Tor with the above command after adding that line it will
start silently and continue running.  To shut it down use the
`PidFile` we configured above:

    $ doas sh -c "kill `cat $TORCHROOT/var/run/tor/tor.pid`"

At this point your chroot'ed Tor installation is working and listening
for `SOCKS` connections on port 9050.

{{../footer.md}}
