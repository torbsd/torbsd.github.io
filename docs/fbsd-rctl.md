##Controlling Tor on FreeBSD with rctl##

In December 2017, Tor relays were subjected to a DDOS attacks which overconsumed RAM and caused relays to become inoperable.

While the torrc contains the setting MaxMemInQueues, the documentation states that it only affects some queues, and doesn't set a hard limit in tor daemon usage.

The traditional FreeBSD solution is to use limits set in [/etc/login.conf(5)](https://www.freebsd.org/cgi/man.cgi?query=login.conf&apropos=0&sektion=5&manpath=FreeBSD+11.1-RELEASE+and+Ports&arch=default&format=html).

There is another solution starting with FreeBSD 9.x: [rctl(8)](https://www.freebsd.org/cgi/man.cgi?query=rctl&sektion=8), a database to display and set resource limits for users or daemons.

###Enabling rctl###

[rctl(4)](https://www.freebsd.org/cgi/man.cgi?query=rctl&sektion=4&apropos=0&manpath=FreeBSD+11.1-RELEASE+and+Ports) is enabled with a custom kernel or with a /boot/loader.conf tunable.

After it's enabled, a reboot is required.

The sysctl knob can then be set.
```
% sysctl kern.racct.enable=1
```
To make this setting permanent, add this line to the [/etc/sysctl.conf(5)](https://www.freebsd.org/cgi/man.cgi?query=sysctl.conf&apropos=0&sektion=5&manpath=FreeBSD+11.1-RELEASE+and+Ports&arch=default&format=html).
```
kern.racct.enable=1
```

###rctl Rules###

Once rctl is enabled and operational, the rules require simple syntax. The pattern is:

subject:subject-id:resource:action=number/subject

In this case, the tor daemon will only be allowed to use up to 2Gb of RAM.
```
% rctl -a user:_tor:memoryuse:deny=2G/_tor
```

As with /etc/sysctl.conf settings, rules persist across reboots if added to the relevant configuration file, in this case /etc/rctl.conf:

```
user:_tor:memoryuse:deny=2G/_tor
```
Other relevant resources to consider restricting include maxproc and openfiles.
