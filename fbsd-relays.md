Title: FreeBSD Guide to Configuring Tor Relays
CSS: torbsd.css
Author: gman999
Editors: attila
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.

{{header.md}}

## FreeBSD Guide to Configuring Tor Relays ##

__THIS IS PRELIMINARY WORK AT AN EARLY STAGE. ANONYMITY IS NOT A GAME, SO PLEASE DO NOT JUST ASSUME THESE GUIDES ARE FINE AS-IS. YOU HAVE BEEN WARNED.__

## Introduction ##

[FreeBSD](https://www.freebsd.org) is a Unix-derived operating system
focused on reliability and performance. FreeBSD maintains a large user
base in the backend infrastructures of the world, not to mention in
products and services such as WhatsApp, Juniper, Netflix, NetApp and
Isilon. Widely used systems such as pfSense and FreeNAS are also based
on FreeBSD.

FreeBSD is an ideal platform for running a Tor relay. This guide
aims to provide insights for those interested in running a Tor relay
on FreeBSD. It assumes a certain level of basic comfort with
traditional Unix tools such as editors and starting and stopping
daemons, not to mention navigating through the install process and
general setup.  This is not a full step-by-step instructional for
those who are new to the Unix shell.

For installing applications, the FreeBSD ports system is the preferred 
method, as it maintains the most current versions, as opposed to the
new pkg system.

There are version FreeBSD branches in regular development.  It is
recommended to use the most recent production release, which is the
10-branch.

This guide is based on the FreeBSD 10-branch.

### Syntax ###

Refer to the [Documentation Style Guide](doc-guide.html) for
information about syntax in this document.

### FreeBSD Documentation ###

FreeBSD maintains documentation in the [FreeBSD Handbook] and in the
[manual pages]. The man pages are also available directly on a FreeBSD
system.

## The Quick and Short Version ##

These are the basic steps to configure a Tor relay with FreeBSD.  This
will create an operational relay.

Install FreeBSD 10 and update to most recent -STABLE version

Populate and/or update the ports tree under */usr/ports*

>% svnlite update /usr/ports

Install either the stable or development version of Tor from the ports tree. The -devel or alpha version of Tor is likely the better choice.

>% cd /usr/ports/security/tor && make install clean

or

>% cd /usr/ports/security/tor-devel && make install clean

Copy the torrc.sample file to torrc

>% cp /usr/local/etc/tor/torrc.sample /usr/local/etc/tor/torrc

Edit */usr/local/etc/tor/torrc* appropriately. The torrc file is well-commented and instructive, but for a quicker implementation, [this torrc](torrc.txt) is a good starting point.

Create the appropriate log file with the correct permissions:

>%  touch /var/log tor && chown _tor:_tor /var/log/tor && chmod 600 /var/log/tor

Add "tor_enable=YES" in the /etc/rc.conf file

>% echo "tor_enable=YES" >>/etc/rc.conf

Enable random IP ID numbers, and make it permanent by adding to /etc/sysctl.conf as per the post-install message:

>% sysctl net.inet.ip.random_id=1

>% echo "net.inet.ip.random_id=1" >>/etc/sysctl.conf

Start Tor 

>% /usr/local/etc/rc.d/tor start

Use tail(4) to confirm Tor starts correctly:

>% tail -f /var/log/tor.log

Reboot to confirm that Tor starts after a reboot.

## Some Additional Configuration Considerations & Options ##

###Optimizing FreeBSD###

Much attention has been given to optimizing operating systems to operate as Tor
relays. At this point, we don't have experience in any bottlenecks in using Free
BSD as a relay, although the relays we have administered have never exceeded 5mb
ps. However, if Netflix could use a default install of FreeBSD 10 to push its tr
affic, FreeBSD likely doesn't need that much tweaking.

###obfsproxy###

As internet censorship and surveillance are a continual battle, the Tor Project implements regular counter-measures.

One such tool is obfsproxy, a pluggable transport proxy. To install obfsproxy:

>% cd /usr/ports/security/obfsproxy && make install clean

The sample [torrc file](torrc.txt) includes the necessary torrc configuration lines.

The one caveat to using obfsproxy with a firewall is that the TCP port is determined dynamically. In such a case, a static port can be assigned in the torrc file with ExtORPort option.

###Consider Using Memory-Based Filesystems###

FreeBSD supports two memory-based filesystems: [md(4)](https://www.freebsd.org/cgi/man.cgi?query=md&apropos=0&sektion=0&manpath=FreeBSD+10.2-RELEASE&arch=default&format=ascii) and [tmpfs(5)](https://www.freebsd.org/cgi/man.cgi?query=tmpfs&apropos=0&sektion=0&manpath=FreeBSD+10.2-RELEASE&arch=default&format=ascii). tmpfs(5) was more recently developed. Both are useful for relays in which certain partitions, such as /tmp or /var/log, are moved to memory as opposed to the hard disks. For systems where disk writes need to be minimized, such as with flash memory, memory-based are a useful mechanism. There is an additional security benefit, in that upon reboots, all memory-based is cleared.

Changes to partitions are done in the [/etc/fstab(5) file](https://www.freebsd.org/cgi/man.cgi?query=fstab&apropos=0&sektion=0&manpath=FreeBSD+10.2-RELEASE&arch=default&format=ascii).

For example, to make the /tmp a tmpfs(5)-based partition, hash out the current /tmp line, and replace with:

tmpfs	/tmp	tmpfs	rw,mod=0775	0	0


### Encrypting the Swap File ###

By default, FreeBSD does not encrypt the swap file.  To implement swap file encryption:

Identify the swap file partition with [swapinfo(8)](https://www.freebsd.org/cgi/man.cgi?query=swapinfo&apropos=0&sektion=0&manpath=FreeBSD+10.2-RELEASE&arch=default&format=ascii)

>% /usr/sbin/swapinfo

__Device	1K-blocks	Used	Avail	Capacity__

__/dev/ada0p3	4194304		0	2194304		0%__

In that example, our swap file is */dev/ada0p3*.

Clear the current contents of the swap file with dd(1)

>% dd if=/dev/random of=/dev/ada0p3 bs=1m

Either gdbe(8) or geli(8) can be used to encrypt the swap file.  In this case, geli(8) is used by adding the .eli suffix to the swap file entry in */etc/fstab* so that it reads similar to this:

#Device		Mountpoint	FStype	Options	Dump	Pass#
/dev/ada0p3.eli	none		swap	sw	0	0

By default, geli(8) employs AES/128-bit encryption. The geli(8) man page offers other options.

After the system is rebooted, encryption of the swap file can be confirmed with swapinfo(8):

__Device        1K-blocks       Used    Avail   Capacity__

__/dev/ada0p3.eli   4194304         0       2194304         0%__


>% dd if=/dev/

###Keeping the Ports Tree Updated###

svnlite(1) is a light-weight version of Subversion, the primary tool for updating the FreeBSD source code on a local machine.  It is integrated in the base of FreeBSD as-of the 10 branch. Subversion commands work with svnlite(1) as they would with the svn command.

To update the ports tree with svnlite(1), where MIRROR refers to the FreeBSD Subversion mirror chosen (us-east, us-west, europe):

svnlite co svn://svn0.MIRROR.freebsd.org/ports/head

Once the /usr/ports directory has been fully populated with svnlite(1), the ports tree can be updated with:

svnlite update /usr/ports

###Keeping Accurate Time with ntpd(8)###

Accurate time is an important requirement of a Tor relay. On FreeBSD, ntpd(8) is in the base operating system. Note that ntpdate(8) is deprecated and its function is replaced with <i>ntpd_sync_on_start</i>. To enable and run:

Edit /etc/rc.conf and add the following lines:

>ntpd_enable="YES"

>ntpd_sync_on_start="YES"

To start ntpd

>% /etc/rc.d/ntpd start

ntpd(8) status can be checked by viewing the /var/db/ntpd.drift file, or with the command:

>% ntpq -p

Alternately, the ports collection contains a portable version of [OpenBSD's](http://openntpd.org/) [OpenNTPD](https://freshports.org/net/openntpd/).

###File Paths for Tor on FreeBSD###

Tor configuration file: */usr/local/etc/tor/torrc*

Tor executible: */usr/local/etc/rc.d/tor*

Tor data, including private key, statistics and Hidden Services: */var/db/tor*

Tor log file: */var/log/tor*

###Starting, Restarting and Stopping Tor###

/usr/local/etc/rc.d/tor [start|stop|restart|

Notes on the FreeBSD /usr/local/etc/tor/torrc

## Keeping FreeBSD Updated ##

svnlite co svn://svn0.MIRROR.freebsd.org/stable/10

svnlite update /usr/src

Rebuild kernel as per instructions in FreeBSD Handbook


Tweaks

limits

netstat -s


###Utilizing Hardware Cryptographic Devices###

hardware crypto.. .glxsb

###Building a Leaner, Lighter FreeBSD###

Like most operating systems, FreeBSD has grown in size with increased hardware support and features.  The most obvious direction is to minimize the kernel size, but that is beyond the scope of this document.  However, there are many features than can be easily removed using the src.conf(5) file.  The src.conf file sets parameters for compiling the FreeBSD source code. By default, there is not /etc/src.conf file.  It can be manually created, with variables listed in the man page. Ultimately, a smaller operating system means a smaller attack surface for a adversary to attack.

For those building embedded systems on small disks, a comprehensive src.conf(5) file can be useful.

For a Tor relay running on server hardware, there are some obvious variables to set.

Most modern hardware do not have a floppy disk.

WITHOUT_FLOPPY=yes

In our example, we used pf(4) for a firewall, which makes ipfw(4) and ipfilter(1) superfluous.

WITHOUT_IPFW=yes
WITHOUT_IPFILTER=yes


Other src.conf variables to consider include:


WITHOUT_IPX=yes
WITHOUT_BLUETOOTH=yes
WITHOUT_GAMES=yes
WITHOUT_LPR=yes
WITHOUT_WIRELESS=yes
WITHOUT_WPA_SUPPLICANT_EAPOL=yes



security/OpenSSL as opposed to base version of OpenSSL: test it.  but you probably update ports more anyways /usr/bin/openssl v /usr/local/bin/openssl


/etc/make.conf
either:

WITH_OPENSSL_BASE=yes (default)
WITH_OPENSSL_PORTS=yes

disabled ciphers for ssl... /etc/make.conf

dailies: read them.

It is critical to remember that setting an incorrect variable can disable a working system.  Set variables in the src.conf(5) file carefully.  You have been warned. A proposed default copy of /etc/src.conf resides here

## Possible Errors/Warnings ##

Nov 21 07:46:56.000 [notice] {GENERAL} We were built to run on a 64-bit CPU, with OpenSSL 1.0.1 or later, but with a version of OpenSSL that apparently lacks accelerated support for the NIST P-224 and P-256 groups. Building openssl with such support (using the enable-ec_nistp_64_gcc_128 option when configuring it) would make ECDH much faster.
</p>

Dec 19 09:26:11.000 [notice] We weren't able to find support for all of the TLS ciphersuites that we wanted to advertise. This won't hurt security, but it might make your Tor (if run as a client) more easy for censors to block.

Dec 19 09:26:11.000 [notice] To correct this, use a more recent OpenSSL, built without disabling any secure ciphers or features.

 
## Future Additions ##

to ZFS or not

recommended network cards

enabling IDEA with /etc/src.conf

hardware crypto with glxsb, aesni


##Resources##

[FreeBSD Handbook 12.9 Tuning with sysctl(8)](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/configtuning-sysctl.html)

[FreeBSD Handbook 12.11 Tuning Kernel Limits](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/configtuning-kernel-limits.html)

[SystemTuning FreeBSD Wiki](https://wiki.freebsd.org/SystemTuning)

[Network Performance Tuning on the FreeBSD Wiki](https://wiki.freebsd.org/NetworkPerformanceTuning)

[Performance Tweaks on the FreeBSD Wiki](https://wiki.freebsd.org/PerformanceTweaks)

[Performance on the FreeBSD Wiki](https://wiki.freebsd.org/Performance)

[FreeBSD Handbook]: https://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/index.html "FreeBSD Handbook"
[manual pages]: https://www.freebsd.org/cgi/man.cgi "manual pages"
[FreeBSD Sysctl]: http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/configtuning-sysctl.html "FreeBSD sysctl"


{{footer.md}}
