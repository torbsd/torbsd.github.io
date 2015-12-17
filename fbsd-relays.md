Title: FreeBSD Guide to Configuring Tor Relays
CSS: torbsd.css
Author: gman999
Editors: attila
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

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


{{footer.md}}
