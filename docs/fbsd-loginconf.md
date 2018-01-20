##Limiting Tor Resource Usage with login.conf##

It's good mitigation protocol to limit resources on high-profile and frequently targeted daemons.

Tor relays, in particular, often face extraordinary and particular attacks, like the memory-consuming attack in December 2017 which harshly deprecated the network.

The standard host-based method to inhibit denial-of-service by resource hogging is by setting limits by login class.

Specifically, the [login.conf(5)](https://www.freebsd.org/cgi/man.cgi?query=login.conf&apropos=0&sektion=0&manpath=FreeBSD+11.1-RELEASE+and+Ports&arch=default&format=html) file allows limits to be set to the tor daemon.

In this case, the _tor user will be restricted to only using 2Gb of memory.

Add the following lines to the /etc/login.conf:

```
_tor:\
	:memoryuse=2G:\
	:tc:default:
```

After any changes to /etc/login.conf are made, [cap_mkdb(1)](https://www.freebsd.org/cgi/man.cgi?query=cap_mkdb&sektion=1&apropos=0&manpath=FreeBSD+11.1-RELEASE+and+Ports) must be run to update the capability database:
```
% cap_mkdb /etc/login.conf
```
