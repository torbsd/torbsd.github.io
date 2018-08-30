Title: OpenBSD Guide to Configuring Tor Relays
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines are at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

## OpenBSD Guide to Configuring Tor Relays ##

__THIS IS PRELIMINARY WORK AT AN EARLY STAGE. ANONYMITY IS NOT A GAME, SO PLEASE DO NOT JUST ASSUME THESE GUIDES ARE FINE AS-IS. YOU HAVE BEEN WARNED.__

## Introduction ##

[OpenBSD] is a Unix-derived operating system focused on security and the adherence to standards. It is considered among the most secure systems available. OpenBSD developers rebuilt SSH from the ground up, until the omnipresent adoption of OpenSSH. OpenBSD developers are now building LibreSSL as a replacement for OpenSSL, frustrated by the accumulated laundry list of vulnerabilities.

With its default install, OpenBSD is not a high-bandwidth relay due to its secure configuration. Allowing a large number of open files on a system is a short route to a compromised device. This guide provides a number of simple changes to the default OpenBSD install.

For installing applications, OpenBSD's [recommended method] is the [pkg_add(1)] system, as opposed to using ports build from source. pkg_add uses pre-compiled binary files with set options. Rarely should a user have an issue with the defaults. There are cases in which a more experienced OpenBSD user would opt for the ports system.

This guide is based on OpenBSD 6.3, which was released on April 15, 2018.

### Syntax ###

Refer to the [Documentation Style Guide](doc-guide.html) for information about syntax in this document.

### OpenBSD Documentation ###

OpenBSD documentation, both its [FAQ] and [manual pages], are comprehensive and accurate. The vast majority of questions faced by a user are answered there. The manual pages are also available directly on an OpenBSD system.

### Some Preliminary Issues: OpenBSD -STABLE -CURRENT or snapshots? Ports or Packages? ###

OpenBSD's -STABLE branch is released every six months. The -CURRENT branch, in the form of snapshots, are updated as often, sometimes on a daily basis. Upgrading OpenBSD is easiest with either physical or serial console access to the server. Without immediate access, the -STABLE version is the recommended route.

OpenBSD's [pkg_add] system is reliable and errors are rare. For most users, the [ports] system is not recommended. However, it is important to note that OpenBSD does not include the alpha or unstable versions of Tor in its packages. In one case, OpenBSD did use the alpha version as its default package due to a significant Tor vulnerability.

## Installation and configuration ##

These are the basic steps to create a new Tor relay with OpenBSD, based on the default install.

1. Install OpenBSD and reboot

2. By default, OpenBSD maintains a rather low limit on the maximum number of open files for a process. For a daemon such as Tor, that opens a connection to each and every other relay (currently around 7000 relays), these limits should be raised. Add the following section to `/etc/login.conf`:

```
tor:\
	:openfiles-max=8192:\
	:tc=daemon:
```

3. Increase the kernel maximum number of files:

```shell
$ sysctl kern.maxfiles=20000
```

4. And make this change persistent so that it is in effect after a reboot by adding the following to `/etc/sysctl.conf`:

```
kern.maxfiles=20000
```

5. Install Tor:

```shell
$ pkg_add tor
```

6. Edit `/etc/tor/torrc` appropriately. Settings you definitely want to take a look at are:
* SOCKSPort
* ORPort
* Nickname
* RelayBandwidthRate
* RelayBandwidthBurst
* ContactInfo
* DirPort
* ExitRelay

7. Start Tor automatically after a reboot:

```shell
$ doas rcctl enable tor
```

8. Start Tor now:

```shell
$ doas rcctl start tor
```

9. And at last, watch the Tor log for anything special:

```shell
$ tail -n20f /var/log/daemon
```

[OpenBSD]: http://www.openbsd.org "OpenBSD Project"
[FAQ]: http://www.openbsd.org/faq/index.html "OpenBSD FAQ"
[manual pages]: http://www.openbsd.org/cgi-bin/man.cgi "OpenBSD Manual Pages"
[recommended method]: http://www.openbsd.org/faq/faq15.html#Intro "The OpenBSD packages and ports system"
[pkg_add(1)]: http://www.openbsd.org/faq/faq15.html#PkgMgmt "pkg_add system"
[ports]: http://www.openbsd.org/faq/faq15.html#Ports "ports system"

{{footer.md}}
