Title: The Tor BSD Diversity Project
CSS: ../torbsd.css
Author: gman999
Editors: attila
Date: 2017-10-06
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{../meta.md}}

{{../header.md}}

## A Separate Data Directory for Tor ##

A default install for most Unix-like operating systems places the Tor data directory somewhere underneath the /var partition.

The Tor data directory contains the critical elements for a Tor node, including the node's fingerprint, information from the directory servers such as certificates and microdescriptors, private keys and for any hidden services, the .onion hostname and fingerprint.

On FreeBSD, the Tor data directory is /var/db/tor.

On OpenBSD it is /var/tor.

This document assumes that a dedicated Tor data directory is created with the install process, and will not detail the steps necessary for creating the exclusive partition.

###The Benefits of a Dedicated Tor Data Directory###

There is some utility in providing a dedicated Tor data directory on a Tor node.

* separate mount(8) options can be declared, limiting the execution of binaries, for instance

* a predetermined size isolated from the chance that a bug in Tor could fill the /var partition, which could deprecate system stability, something which is more likely to occur on an embedded system with limited storage

While a dedicated data directory does not qualify as a full-blown security feature, it can be considered a useful mitigation step.

###Size Recommendations for a Tor Data Directory###

The size of a Tor data directory can range drastically. A relay that also acts as a directory mirror could use up to 150M of space. A Tor bridge on an embedded system may need 75M of space in the data directory.

Note that if a node is also providing any Tor hidden services, it is strongly recommended that a separate Tor daemon is run, which would require additional partitions for the respective Tor data directories.

It would likely be adequate to partition 300M for a data directory in most cases to deal with the file size fluctuations with Tor network cached information, in the case of a backup directory server. A Tor bridge, on the other hand, should have a minimum of 150M for the data directory partition, as bridges cannot also act as backup directory servers.

###mount(8) Options for the Tor Data Directory###

Different operating systems allow different options for mounting partitions.

While the size of a partition is most easily set during the install process, mount options can be adjusted in the _/etc/fstab_ file or with the mount(8) command itself to immediately implement a change on a running system.

One mount option available on most operating systems is the _noexec_ setting. Applied to a partition, it prevents binaries from being executed on the partition. Users with root-level privileges, however, can bypass this mitigation feature by remounting the partition without the _noexec_ option.

###Summary###

A dedicated Tor data directory partition should not be considered a full-blown security feature, but there are benefits to implementing it for embedded systems. First, segmenting the data from the rest of the system inhibits the ability for a Tor bug to fill up the /var partition. Second, dedicated mount options, as provided by the operating system, can provide useful mitigation steps for the purpose of security.


{{../footer.md}}
