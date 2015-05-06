Title: Development Version of FreeBSD Guide to Configuring Tor Relays
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.

# Development Version: FreeBSD Guide to Configuring Tor Relays #

## Introduction ##

This document is meant to be a staging arena for additions to the [production version](/fbsd-relays.html), in addition to notes for more advanced FreeBSD users.

[FreeBSD](https://www.freebsd.org) is a Unix-derived operating system focused on reliability and performance. FreeBSD maintains a large user base in the backend infrastructures of the world, not to mention in products and services such as Juniper, Netflix, NetApp and Isilon. Widely used systems such as pfSense and FreeNAS are also based on FreeBSD.

FreeBSD makes an ideal platform for running a Tor relay. This guide aims to provide insights for those interested in running a Tor relay on FreeBSD. It assumes a certain level of basic comfort with traditional Unix tools such as editors and starting and stopping daemons, not to mention navigating through the install process and general setup.  This is not a full step-by-step instructional for those who are new to the Unix command-line.

For installing applications, the FreeBSD ports system is the best method, as it maintains the most current versions, as opposed to the new pkg system.

There are version FreeBSD branches in regular development.  It is recommended to use the most recent production release, which is the 10-branch.

This guide is based on the FreeBSD 10-branch.

### Syntax ###

The shell is denoted with % and a single tab indent.

>% this is a shell command

File names and paths are italicized.

*/usr/local/etc/tor/torrc*

Standard out, or what the computer is displaying is indicated in bold. For instance, if Tor starts successfully, as a client, this line would appear in the log file:

__Nov 22 22:14:20.000 [notice] Bootstrapped 100%: Done__

File additions are indicated with a plus symbol with a single tab indent.

>+add this line=1

FreeBSD maintains documentation in the [FreeBSD Handbook] and in the [manual pages]. The man pages are also available directly on a FreeBSD system. Parenthesis after a word indicates the relevant manual page number. To access the man page for ntpd(8), for instance, type:

>% man 8 ntpd

## The Quick and Short Version ##

These are the basic steps to configure a Tor relay with FreeBSD.  This will create an operational relay.  For more detailed instructions and for additional tips on securing and optimizing the relay

1. Install FreeBSD 10 and update to most recent -STABLE version

2. Update the ports tree under */usr/ports*

>% svnlite update /usr/ports

3. Install either the stable or development version of Tor from the ports tree.

>% cd /usr/ports/security/tor && make install clean

or

>% cd /usr/ports/security/tor-devel && make install clean

4. Copy the torrc.sample file to torrc

>% cp /usr/local/etc/tor/torrc.sample /usr/local/etc/tor/torrc

5. Edit */usr/local/etc/tor/torrc* appropriately

6. Create the appropriate log file with the correct permission:

>%  touch /var/log tor && chown _tor:_tor /var/log/tor && chmod 600 /var/log/tor

7. Add "tor_enable=YES" in the /etc/rc.conf file

>% echo "tor_enable=YES" >>/etc/rc.conf

8. Enable random IP ID numbers, and make it permanent by adding to /etc/sysctl.conf:

>% sysctl net.inet.ip.random_id=1

>% echo "net.inet.ip.random_id=1" >>/etc/sysctl.conf

9. Start Tor 

>% /usr/local/etc/rc.d/tor start

10. Watch the log to make sure Tor starts correctly:

>% tail -f /var/log/tor

11. Reboot to confirm that Tor starts correctly.

## Some Additional Configuration Considerations & Options ##


## Installing FreeBSD ##

select ports tree

Further Configuration After the First Boot

Using RAM-Based Filesystems

/var/log
/tmp
/var/tmp
tmpfs(5)
md(4)

## Encrypting the Swap File ##

By default, FreeBSD does not encrypt the swap file.  The steps to implement an encrypted swap file is simple:

 steps to implement an encrypted swap file is simple:

1.  Identify the swap file partition with swapinfo(8)

>% /usr/sbin/swapinfo

__Device	1K-blocks	Used	Avail	Capacity__

__/dev/ada0p3	4194304		0	2194304		0%__

In that example, our swap file is */dev/ada0p3*.

2.  Now clear the current contents of the swap file with dd(1)

>% dd if=/dev/random of=/dev/ada0p3 bs=1m

3.  Either gdbe(8) or geli(8) can be used to encrypt the swap file.  In this case, geli(8) is used by adding the .eli suffix to the swap file entry in */etc/fstab* so that it reads similar to this:

#Device		Mountpoint	FStype	Options	Dump	Pass#
/dev/ada0p3.eli	none		swap	sw	0	0

By default, geli(8) employs AES/128-bit encryption. This can be changed by referring to geli(8) man page.

After the system is rebooted, encryption of the swap file can be confirmed with swapinfo(8):

__Device        1K-blocks       Used    Avail   Capacity__

__/dev/ada0p3.eli   4194304         0       2194304         0%__




>% dd if=/dev/

## Some Initial sysctl(8) Changes ##

>security.bsd.see_other_uids=1

By default, FreeBSD does not enable random IP identification numbers.  To enable for a running system add the following line to the /etc/sysctl.conf file:

>net.inet.ip.random_id=1

For enabling that sysctl(8) setting, type the following:

>% sysctl net.inet.random.ip_id=1

To confirm this setting, type:

>% sysctl net.inet.ip.random_id

The output should display the following line:

>net.inet.ip.random_id: 1

## Keeping the Ports Tree Updated ##

svnlite(1) is a light-weight version of Subversion, the primary tool for updating the FreeBSD source code on a local machine.  It is integrated in the base of FreeBSD as-of the 10 branch. Subversion commands work with svnlite(1) as they would with the svn command.

To update the ports tree with svnlite(1), where MIRROR refers to the FreeBSD Subversion mirror chosen (us-east, us-west, europe):

svnlite co svn://svn0.MIRROR.freebsd.org/ports/head

Once the /usr/ports directory has been fully populated with svnlite(1), the ports tree can be updated with:

svnlite update /usr/ports

## Keeping Accurate Time with ntpd(8) ##

Accurate time is an important requirement of a Tor relay. On FreeBSD, ntpd(8) is in the base operating system. Note that ntpdate(8) is depracated and its function is replaced with <i>ntpd_sync_on_start</i>. To enable and run:

Edit /etc/rc.conf and add the following lines:

>ntpd_enable="YES"

>ntpd_sync_on_start="YES"

To start ntpd

>% /etc/rc.d/ntpd start

ntpd(8) status can be checked by viewing the /var/db/ntpd.drift file, or with the command:

>% ntpq -p

Alternately, the ports collection contains OpenBSD's OpenNTPD.

## Installing Tor ##

Currently, the preferred method for installing FreeBSD applications is the ports system. The ports tree contains the most current versions of FreeBSD applications. In the future, the new FreeBSD package system, known as pkg, should be synchronized with the port versions. In the case of embedded hardware on i386 or amd64 architectures, pkg may be the preferred method.  For arm-based hardware such as the RaspberryPi or BeagleBone, there is no pkg repository yet available.  Therefore, for ARM-based systems, either install Tor from ports or create a custom repository.


>/etc/rc.conf: tor_enable="YES"

/var/log/tor

chown _tor:_tor

chmod 600

## File Paths for Tor on FreeBSD ##

Tor configuration file: */usr/local/etc/tor/torrc*

Tor executible: */usr/local/etc/rc.d/tor*

Tor data, including private key, statistics and Hidden Services: */var/db/tor*

Tor log file: */var/log/tor*

## Starting, Restarting and Stopping Tor ##

/usr/local/etc/rc.d/tor [start|stop|restart|

Notes on the FreeBSD /usr/local/etc/tor/torrc

## Firewalling with pf(4) ##


obfsproxy and the problem

security/obfsproxy

## Keeping FreeBSD Updated ##

svnlite co svn://svn0.MIRROR.freebsd.org/stable/10

svnlite update /usr/src

Rebuild kernel as per instructions in FreeBSD Handbook


Tweaks

sysctls and determining changes

limits

netstat -s


## Utilizing Hardware Cryptographic Devices ##

hardware crypto.. .glxsb

## Other Optional Changes to Consider ##

## Building a Leaner, Lighter FreeBSD ##

Like most operating systems, FreeBSD has grown in size with increased hardware support and features.  The most obvious direction is to minimize the kernel size, but that is beyond the scope of this document.  However, there are many features than can be easily removed using the src.conf(5) file.  The src.conf file sets parameters for compiling the FreeBSD source code. By default, there is not /etc/src.conf file.  It can be manually created, with variables listed in the man page. Ultimately, a smaller operating system means a smaller attack surface for a adversary to attack.

For those building embedded systems on small disks, a comprehensive src.conf(5) file can be useful.

For a Tor relay running on server hardware, there are some obvious variables to set.

Most modern hardware do not have a floppy disk.
</p>

<p>
<i>
WITHOUT_FLOPPY=yes
</i>
</p>

<p>
In our example, we used pf(4) for a firewall, which makes ipfw(4) and ipfilter(1) superfluous.
</p>

<p>
<ul>
<i>
<li>WITHOUT_IPFW=yes</li>
<li>WITHOUT_IPFILTER=yes</li>
</li>
</i>
</ul>
</p>

<p>
Other src.conf variables to consider include:
</p>

<ul>
<i>
<li>WITHOUT_IPX=yes</li>
<li>WITHOUT_BLUETOOTH=yes</li>
<li>WITHOUT_GAMES=yes</li>
<li>WITHOUT_LPR=yes</li>
<li>WITHOUT_WIRELESS=yes</li>
<li>WITHOUT_WPA_SUPPLICANT_EAPOL=yes</li>
</i>
</ul>

<p>
security/OpenSSL as opposed to base version of OpenSSL: test it.  but you probably update ports more anyways /usr/bin/openssl v /usr/local/bin/openssl
</p>

/etc/make.conf
either:

WITH_OPENSSL_BASE=yes (default)
WITH_OPENSSL_PORTS=yes

disabled ciphers for ssl... /etc/make.conf

dailies: read them.

<p>
It is critical to remember that setting an incorrect variable can disable a working system.  Set variables in the src.conf(5) file carefully.  You have been warned. A proposed default copy of /etc/src.conf resides <a href="here"></a>.
</p>

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


## Resources ##

<a href="http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/configtuning-sysctl.html">FreeBSD Handbook 12.9 Tuning with sysctl(8)</a>

<a href="http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/configtuning-kernel-limits.html">FreeBSD Handbook 12.11 Tuning Kernel Limits</a>

<a href="https://wiki.freebsd.org/SystemTuning">SystemTuning FreeBSD Wiki</a>

<a href="https://wiki.freebsd.org/NetworkPerformanceTuning">Network Performance Tuning on the FreeBSD Wiki</a>

<a href="https://wiki.freebsd.org/PerformanceTweaks">Performance Tweaks on the FreeBSD Wiki</a>

<a href="https://wiki.freebsd.org/Performance">Performance on the FreeBSD Wiki</a>

[FreeBSD Handbook]: https://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/index.html "FreeBSD Handbook"
[manual pages]: https://www.freebsd.org/cgi/man.cgi "manual pages"
[FreeBSD Sysctl]: http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/configtuning-sysctl.html "FreeBSD sysctl"
