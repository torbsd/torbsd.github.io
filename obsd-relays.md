Title: OpenBSD Guide to Configuring Tor Relays
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines are at the top are multimarkdown metadata; leave them.

{{header.md}}

# OpenBSD Guide to Configuring Tor Relays #

## THESE ARE PRELIMINARY WORKS AT THE EARLY STAGE. ANONYMITY IS NOT A GAME, SO PLEASE DO NOT JUST ASSUME THESE GUIDES ARE FINE AS-IS. YOU HAVE BEEN WARNED. ##

## Introduction ##

[OpenBSD] is a Unix-derived operating system focused on security and the adherence to standards. It is considered among the most secure systems available. OpenBSD developers rebuilt SSH from the ground up, until the omnipresent adoption of OpenSSH. OpenBSD developers are now building LibreSSL as a replacement for OpenSSL, frustrated by the accumulated laundry list of vulnerabilities.

With its default install, OpenBSD is not a high-bandwidth relay due to its secure configuration. Allowing a large number of open files on a system is a short route to a compromised device. This guide provides a number of simple changes to the default OpenBSD install.

For installing applications, OpenBSD's [recommended method] is the [pkg_add(1)] system, as opposed to using ports build from source. pkg_add uses pre-compiled binary files with set options. Rarely should a user have an issue with the defaults. There are cases in which a more experienced OpenBSD user would opt for the ports system.

This guide is based on OpenBSD 5.7, which was released on May 1, 2015.

### Syntax ###

Refer to the [Documentation Style Guide](doc-guide.html) for information about syntax in this document.

### OpenBSD Documentation ###

OpenBSD documentation, both its [FAQ] and [manual pages], are comprehensive and accurate. The vast majority of questions faced by a user are answered there. The manual pages are also available directly on an OpenBSD system.

### Some Preliminary Issues: OpenBSD -STABLE -CURRENT or snapshots? Ports or Packages? ###

OpenBSD's -STABLE branch is released every six months. The -CURRENT branch, in the form of snapshots, are updated as often, sometimes on a daily basis. Upgrading OpenBSD is easiest with either physical or serial console access to the server. Without immediate access, the -STABLE version is the recommended route.

OpenBSD's [pkg_add] system is reliable and errors are rare. For most users, the [ports] system is not recommended. However, it is important to note that OpenBSD does not include the alpha or unstable versions of Tor in its packages. In one case, OpenBSD did use the alpha version as its default package due to a significant Tor vulnerability.

## The Quick and Short Version ##

These are the basic steps to configure a Tor relay with OpenBSD, based on the default install. This will create a relay. For more detailed instructions and for additional tips on securing and optimizing the relay

1. Install OpenBSD, then reboot

2. Add the following section to */etc/login.conf* file:

>`tor:\`
>>`:openfiles-max=8192:\`
>>`:tc=daemon:`

3. Increase the kernel limit on maximum files:

>$ sysctl kern.maxfiles=20000

4. To make that sysctl change remains after rebooting, add the following to the */etc/sysctl.conf* file:

>>kern.maxfiles=20000

5. Install Tor:

>$ pkg_add -r tor

6. Copy the torrc.sample file to torrc:

>$

7. Edit */etc/tor/torrc* appropriately

8. Add the line tor_flags="-f /etc/tor/torrc" in the /etc/rc.conf.local file

9. Start Tor with /etc/rc.d/tor start

10. Watch the Tor log with "tail -f /var/log/tor/notices.log"

## Some Additional Configuration Considerations & Options ##

Installing OpenBSD

System Configuration

RAM-based disks such as tmpfs or are useful for avoiding writes to the hard disk, which limits residual data after reboots and can increase the longevity of sensitive disk media, particularly compact flash cards.

#### Layout of Tor Files on OpenBSD ###

The torrc file is located in /etc/tor/torrc.

The sample file is in /usr/local/share/examples/tor/torrc.sample

Log

/var/log/tor/notices.log

### Tor on Startup ###

$ cat /etc/rc.conf.local

>tor_flags="-f /etc/tor/torrc"

>ntpd_flags="-s"

>sndiod_flags=NO

/etc/sysctl.conf

kern.maxfiles=20000 default is 7030

/etc/login.conf

By default, OpenBSD maintains limits for kernel functions with an eye on security. For higher-bandwidth on an array of kernel functions. One in particular that will significantly throttle a Tor relay's operation is the number of open files allowed. This raises the number of open files for the Tor daemon:

`tor:\`

>`:openfiles-max=8192:\`

>`:tc=daemon:`

### Encrypting Swap ###

By default, OpenBSD enables encrypted swap in /etc/sysctl.conf:

`#vm.swapencrypt.enable=0        # 0=Do not encrypt pages that go to swap`

Removing the # __disables__ the encrypting of swap.

## Future ##

### Why To Use Ports as Opposed to Packages ###

OpenBSD's pkg_add system is easy to use and smooth in operation. However, the pkg_add restricts the install to the current Tor package with 

[OpenBSD]: http://www.openbsd.org "OpenBSD Project"
[FAQ]: http://www.openbsd.org/faq/index.html "OpenBSD FAQ"
[manual pages]: http://www.openbsd.org/cgi-bin/man.cgi "OpenBSD Manual Pages"
[recommended method]: http://www.openbsd.org/faq/faq15.html#Intro "The OpenBSD packages and ports system"
[pkg_add(1)]: http://www.openbsd.org/faq/faq15.html#PkgMgmt "pkg_add system"
[ports]: http://www.openbsd.org/faq/faq15.html#Ports "ports system"

{{footer.md}}
