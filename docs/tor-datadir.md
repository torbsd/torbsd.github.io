Title: The Tor BSD Diversity Project
CSS: ../torbsd.css
Author: gman999
Editors: attila
Date: 2017-10-06
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{../meta.md}}

{{../header.md}}

## A Separate Data Directory for Tor ##

A default install of most operating systems places the Tor data directory somewhere underneath the /var partition.

The Tor data directory contains the critical elements for a Tor node, including the fingerprint, information from the directory servers such as certificates and microdescriptors, private keys and for any hidden services, the data being provided to remote users.

On FreeBSD, the Tor data directory is /var/db/tor, while on OpenBSD it is /var/tor.

This document assumes that a dedicated Tor data directory is created with the install process.

###The Benefits of a Dedicated Tor Data Directory###

There is some utility in providing a dedicated Tor data directory on a Tor node.

* separate mount(8) options can be declared, limiting the execution of binaries, for instance

* a bug in Tor could potentially fill the /var partition, which could inhibit system stability, which is more likely to occur on an embedded system with limited storage

While a dedicated data directory does not qualify as a full-blown security feature, it can be considered a small mitigation step.

###Size Recommendations for a Tor Data Directory###

The size of a Tor data directory should can range drastically. A relay that also acts as a directory mirror could use up to 150M of space. A Tor bridge on an embedded system may maintain 75M of space in the data directory.

Note that if a node is also providing any Tor hidden services, it is strongly recommended that a separate Tor daemon is run, which would require additional partitions for the respective Tor data directories.

It would likely be adequate to partition 500M for a data directory in most cases to deal with the file size fluctuations with Tor network cached information, in the case of a backup directory server. A Tor bridge, on the other hand, should have a minimum of 150M for the data directory partition.

###mount(8) Options for the Tor Data Directory###

Different operating systems allow different options for mounting partitions.

While the size of a partition is most easily determined during the install process, mount options can be adjusted in the _/etc/fstab_ file or with the mount(8) command itself to immediately implement a change on a running system.

One mount option available on most operating systems is the _noexec_ setting. Applied to a partition, it prevents any binaries from being executed on the partition. Users with root-level privileges can bypass this mitigation feature by remounting the partition without the _noexec_ option.

###Summary###

A dedicated Tor data directory partition should not be considered a full-blown security feature, but there are some benefits to implementing it for embedded systems. First, segmenting the data from the rest of the system inhibits the ability for a Tor bug to fill up the /var partition. Second, dedicated mount options, as provided by the operating system, can provide useful mitigation steps for the purpose of security.







{{../footer.md}}
