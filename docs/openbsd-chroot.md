Title: The Tor BSD Diversity Project
CSS: ../torbsd.css
Author: attila
Editors: gman
Date: 2017-10-03
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{../meta.md}}

{{../header.md}}

## Running Tor in a chroot under OpenBSD ##

We have taken
[the instructions in the TPO wiki](https://trac.torproject.org/projects/tor/wiki/doc/TorInChroot)
as a starting point, and have adapted them to suit
[OpenBSD](https://www.openbsd.org).  We assume basic Unix command-line
skills and some familiarity with using OpenBSD; the
[FAQs](https://www.openbsd.org/faq/) and
[man pages](https://man.openbsd.org) are highly recommended.

For reference, these instructions apply to OpenBSD-current as of
2017-10-03.  The precise meaning of "current" is given in
[the FAQ on OpenBSD flavors](https://www.openbsd.org/faq/faq5.html#Flavors).

### Preliminaries ###

#### Filesystem ####

From the [mount(8)](https://man.openbsd.org/mount) man page:

    nodev      Do not interpret character or block special devices on
               the file system.  This option is useful for a server
               that has file systems containing special devices for
               architectures other than its own.

The installer marks fstab entries for partitions created during
installation as `nodev` by default; only the root filesystem, where
`/dev/` lives, is not.  This presents a problem for Tor in a chroot,
because Tor needs to use three device special files: `/dev/random`,
`/dev/urandom` and `/dev/null`.  The usual way of making device files
available in a chroot is to use the
[mknod(8)](https://man.openbsd.org/mknod) command in the chroot, but
if the chroot lives on a filesystem mounted `nodev` (likely under
OpenBSD) this will not work as expected when Tor tries to use the
device.

A discussion of disk partitioning and configuration is beyond the
scope of this document.  The
[FAQ on Disk Partitioning in the Installer](https://www.openbsd.org/faq/faq4.html#Partitioning)
has links to much of the relevant documentation.  If you wish to make
a small partition available for use as a chroot area this is where to
start.  We also will not counsel you to stick your chroot in the root
filesystem, as this is bad form and could cause you problems in many
cases.

For our purposes here we will take another approach: create a small
filesystem stored in a regular user file and mount it without the
`nodev` option.  The [vnconfig(8)](https://man.openbsd.org/vnconfig)
command is the key.  Let's start by being careful and looking at what,
if any files have been attached to
[vnd(4)](https://man.openbsd.org/vnd) devices:

    $ doas vnconfig -l
    vnd0: covering /home/me/something/file.img on sd0k, inode 4783121
    vnd1: not in use
    vnd2: not in use
    vnd3: not in use

A couple important points:

* by default there are four vnd devices configured;
* if one is in use and you vnconfig it again it is overwritten, so you need to know which ones are not in use;
* nothing in the system will use a vnd device by default.

In the above example the system is using `vnd0` to attach to a file
containing a disk image on `vnd0`.  This means we should use `vnd1` for
the chroot; we'll use `vnd1` for the rest of this document to stay
consistent.

First, prepare a file to hold the disk image and attach it as `vnd1`:

    $ dd if=/dev/zero of=chroot.img bs=1m count=50
    $ doas vnconfig vnd1 chroot.img

Next, use [disklabel(8)](https://man.openbsd.org) to add a partition
of the right type that takes up all of the virtual disk; for simplicity
we use the interactive editor (`-E` option):

    $ doas disklabel -E vnd1
    Label editor (enter '?' for help at any prompt)
    > a a
    offset: [0] 
    size: [102400] 
    FS type: [4.2BSD] 
    > w
    > q
    No label changes.

Finally, create a filesystem on the partition we just created
(`/dev/vnd1a`):

    $ doas newfs /dev/rvnd1a

At this point you can mount `/dev/vnd1a` somewhere in your filesystem
without the `nodev` option and use it for the chroot; we will mount it
under `/home/tor/chroot` below.  Once you are done using the chroot
(no Tor process running anymore), you can do the following to clean
up:

    $ doas umount /home/tor/chroot
    $ doas vnconfig -u vnd1

#### Ports Tree ####

We assume you have the ports tree unpacked under `/usr/ports`.  It is
a good idea to read
[the anoncvs documentation](https://www.openbsd.org/anoncvs.html) and
follow its instructions for getting a copy of the ports tree.

For the rest of this guide we assume you have done this and that your
user ID is in the `wsrc` group and has R/W access to `/usr/ports` (as
covered in
[the wsrc FAQ](https://www.openbsd.org/faq/faq5.html#wsrc)).

We will use the ports infrastructure to relieve us of worrying about
the mechanics of grabbing and verifying the code and chasing down
dependencies.

### Basic Chroot Setup ###

There are several elements that must be taken into account:

* shared libraries;
* the password database;
* device nodes;
* directory structure and ownership;
* Tor software and configuration.

First off, set an environment variable to point at the base directory
of the chroot.  We use this everywhere in subsequent commands:

    $ TORCHROOT=/home/tor/chroot

Note that this only sets this variable in your current shell.  If you
switch terminals or shells then you'll have to set it again.

Add a "tor" user and home directory:

    $ doas useradd -d /home/tor -s /sbin/nologin tor
    $ doas mkdir /home/tor
    $ doas chown tor:tor /home/tor

Mount our little filesystem under `/home/tor/chroot`:

    $ doas mkdir /home/tor/chroot
    $ doas chown tor:tor /home/tor/chroot
    $ mount /dev/vnd1a /home/tor/chroot

### Compile Tor and Install in Chroot ###

We'll now use the ports tree to grab the Tor source code, verify it is
the right stuff, unpack it, patch it (if necessary) and build it:

    $ cd /usr/ports/net/tor
    $ env SUDO=doas make

This will download, verify, extract and patch the tor source code and
leave it in a port-specific directory under the ports build area,
`/usr/ports/pobj`.  It will also ensure that everything needed to
build the port is installed.  We set the `SUDO` environment variable
in the `make` invocation in case any ports on which Tor depends on
must be installed prior to building; this tells the ports system to
become root at the appropriate times to install pacakges that are
created as a by-product of chasing down these dependencies.  As of
this writing there is only one dependency (libevent) for Tor but as
that changes these instructions should remain valid.

Note that we just used the ports tree to make sure we're starting with
code that is known to build and work under OpenBSD, we're not building
a package from the port as is normally done.

Next, we change working directories to the root of the source tree:

    $ cd `make show=WRKSRC`
    $ doas make install prefix=$TORCHROOT exec_prefix=$TORCHROOT sysconfdir=$TORCHROOT/etc

The `make show=FOO` idiom is useful in the ports tree generally; it
shows you the full expansion of a
[make(1)](https://man.openbsd.org/make) variable used in the port's
Makefile.  The `WRKSRC` variable will contain the name of the working
source tree directory, which is where we want to go.  There is
comprehensive documentation on this and the other variables used in
ports Makefiles in the
[bsd.port.mk(5)](https://man.openbsd.org/bsd.port.mk) man page.

### Shared Libraries ###

We must deal with shared libraries both for the `tor` binary and for a
system utility that we will copy into the chroot,
[pwd_mkdb(8)](https://man.openbsd.org/pwd_mkdb).  We also need
[ldconfig(8)](https://man.openbsd.org/ldconfig) in the chroot:

    $ doas mkdir $TORCHROOT/sbin
    $ doas cp /sbin/ldconfig $TORCHROOT/sbin
    $ doas mkdir -p $TORCHROOT/usr/sbin
    $ doas cp /usr/sbin/pwd_mkdb $TORCHROOT/usr/sbin

We must copy all shared libraries that both `pwd_mkdb` and `tor` need
into the right places under the chroot.  We define a shell function
called `shlibpaths` to make the commands easier to type:

    $ shlibpaths () {
        ldd $1 | sed -e 1,3d | awk '{print substr($7,2)}'
    }
    $ tar -C / -cf - `shlibpaths $TORCHROOT/bin/tor` | doas tar -C $TORCHROOT -xf -
    $ tar -C / -cf - `shlibpaths $TORCHROOT/usr/sbin/pwd_mkdb` | doas tar -C $TORCHROOT -xf -

The `shlibpaths` function works like so:

* [ldd(1)](https://man.openbsd.org/ldd) spits out the raw list of shared libraries;
* [sed(1)](https://man.openbsd.org/sed) removes the first three lines of output, which are noise for our purposes;
* [awk(1)](https://man.openbsd.org/awk) pulls out the seventh whitespace-separated column and prints all but the first character, making the path to the shared library relative to root.

The -C option to [tar(1)](https://man.openbsd.org/tar) tells tar to change directories to the given place before doing anything else.  In both cases the `tar` command at the head of the pipe packs up the shared libraries in question and the `tar` command at the tail of the pipe unpacks them under the chroot.

Now all the shared libraries that `tor` and `pwd_mkdb` depend on are
in `$TORCHROOT/usr/lib` and `$TORCHROOT/usr/local/lib`.  We must now
run `ldconfig` in the chroot to set up the `/var/run/ld.so.hints`
file:

    $ doas mkdir -p $TORCHROOT/var/run
    $ doas chroot $TORCHROOT /sbin/ldconfig /usr/lib /usr/local/lib

Now that we have `pwd_mkdb` usable in the chroot, set up a minimal
password database:

    $ doas sh -c "grep ^tor /etc/passwd > $TORCHROOT/etc/passwd"
    $ doas sh -c "grep ^tor /etc/group > $TORCHROOT/etc/group"
    $ doas sh -c "grep ^tor /etc/master.passwd > $TORCHROOT/etc/master.passwd"
    $ doas sh -c "grep ^_shadow /etc/group >> $TORCHROOT/etc/group"
    $ doas chroot $TORCHROOT /usr/sbin/pwd_mkdb /etc/master.passwd

Set up device nodes that Tor needs:

    $ doas mkdir $TORCHROOT/dev
    $ doas mknod -m 644 $TORCHROOT/dev/random c 45 0
    $ doas mknod -m 644 $TORCHROOT/dev/urandom c 45 2
    $ doas mknod -m 666 $TORCHROOT/dev/null c 2 2

At this point the software and basic system configuration in the
chroot is complete.

### Configure Tor ###

Create a minimal Tor configuration in the chroot:

    $ doas sh -c "cat > $TORCHROOT/etc/tor/torrc"
    User tor
    DataDirectory /var/lib/tor
    GeoIPFile /share/tor/geoip
    PidFile /var/run/tor/tor.pid
    Log notice file /var/log/tor/log
    ^D

Create the run-time directories needed by `tor` and make sure they are
owned by the `tor` user and have the right permissions:

    $ doas mkdir -p $TORCHROOT/var/run/tor
    $ doas mkdir -p $TORCHROOT/var/lib/tor
    $ doas chmod 700 $TORCHROOT/var/lib/tor
    $ doas mkdir -p $TORCHROOT/var/log/tor
    $ doas chown tor:tor $TORCHROOT/var/run/tor
    $ doas chown tor:tor $TORCHROOT/var/lib/tor
    $ doas chown tor:tor $TORCHROOT/var/log/tor

### Start Tor ###

Finally, you should be able to start Tor in the chroot:

    $ doas chroot $TORCHROOT /bin/tor

This should produce output that looks something like:

    Oct 04 16:46:55.116 [notice] Tor 0.3.0.10 (git-c33db290a9d8d0f9) running on OpenBSD with Libevent 2.0.22-stable, OpenSSL LibreSSL 2.6.3 and Zlib 1.2.3.
    Oct 04 16:46:55.116 [notice] Tor can't help you if you use it wrong! Learn how to be safe at https://www.torproject.org/download/download#warning
    Oct 04 16:46:55.126 [notice] Read configuration file "/etc/tor/torrc".
    Oct 04 16:46:55.192 [notice] Opening Socks listener on 127.0.0.1:9050

It will also produce a verbose log of its operation in `$TORCHROOT/var/log/tor/log`.

You can interrupt Tor when run this way by pressing ^C.  If you want
Tor to fork into the background and run as a daemon, add one more line
to your torrc file:

    $ doas sh -c "echo RunAsDaemon 1 >> $TORCHROOT/etc/tor/torrc"

If you start Tor with the above command after adding that line it will
start silently and continue running.  To shut it down use the
`PidFile` we configured above:

    $ doas sh -c "kill `cat $TORCHROOT/var/run/tor/tor.pid`"

At this point your chroot'ed Tor installation is working and listening
for `SOCKS` connections on port 9050.

{{../footer.md}}
