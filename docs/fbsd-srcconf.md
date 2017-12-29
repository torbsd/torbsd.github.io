##A Smaller FreeBSD Footprint with /etc/[src.conf(5)](https://www.freebsd.org/cgi/man.cgi?query=src.conf&apropos=0&sektion=0&manpath=FreeBSD+11.1-RELEASE+and+Ports&arch=default&format=html)##

FreeBSD provides a useful mechanism for minimizing options when building or upgrading a system from source with the /etc/src.conf file.

While [freebsd-update](https://www.freebsd.org/cgi/man.cgi?query=freebsd-update&apropos=0&sektion=0&manpath=FreeBSD+11.1-RELEASE+and+Ports&arch=default&format=html) is a simpler, user-friendly method for binary system updates, [building from source](https://www.freebsd.org/doc/handbook/makeworld.html) enables a leaner system with unnecessary features removed from the customized system.

NOTE: This document should be warily approached for those not familiar with building FreeBSD from source. Production systems can be rendered inoperable with incorrect settings. More commonly, some FreeBSD subsystems like [kerberos(8)](https://www.freebsd.org/cgi/man.cgi?query=kerberos&apropos=0&sektion=0&manpath=FreeBSD+11.1-RELEASE+and+Ports&arch=default&format=html) and [ftp(1)](https://www.freebsd.org/cgi/man.cgi?query=ftp&apropos=0&sektion=0&manpath=FreeBSD+11.1-RELEASE+and+Ports&arch=default&format=html) are often required by other base utilities and third-party ports.

Building or upgrading from source with a customized /etc/src.conf file will not dramatically change the size of the system, nor will there be tangible security benefits. There are hypothetical scenarios in which a subsystem like Bluetooth could be enable and provide a gateway into a system if an adversary gets local root access. Of course that same user could also rebuild the system with Bluetooth enabled. It is sane protocol to remove unused code, however.

A quick browse of the [/etc/src.conf(5)](https://www.freebsd.org/cgi/man.cgi?query=src.conf&apropos=0&sektion=0&manpath=FreeBSD+11.1-RELEASE+and+Ports&arch=default&format=html) manual page illustrates the case.

There are three firewall systems included in FreeBSD systems, ipf, ipfw and pf, and any can be removed with /etc/src.conf knobs.

```
     WITHOUT_IPFILTER
	     Set to not	build IP Filter	package.

     WITHOUT_IPFW
	     Set to not	build IPFW tools.

     WITHOUT_PF
	     Set to not	build PF firewall package.  When set, it enforces
	     these options:

	     WITHOUT_AUTHPF
```

Note that by removing pf(4), authpf(8) is also removed. Other knobs include dependent options, and should be carefully noted.

There are other obvious subsystems to remove besides redundant firewalls.

Do you really still need a floppy?
```
     WITHOUT_FLOPPY
	     Set to not	build or install programs for operating	floppy disk
	     driver.
```
Is Unix still Unix without games?
```
     WITHOUT_GAMES
	     Set to not	build games.
```
If a system is being built from source, then [freebsd-update(8)](https://www.freebsd.org/cgi/man.cgi?query=freebsd-update&apropos=0&sektion=0&manpath=FreeBSD+11.1-RELEASE+and+Ports&arch=default&format=html) is likely unnecessary:
```
     WITHOUT_FREEBSD_UPDATE
	     Set to not	build freebsd-update(8).
```

There are many other possible FreeBSD subsystems to remove. This [src.conf example](src.conf.example) is actively used on a production system, with the contents extracted from the manual page.
