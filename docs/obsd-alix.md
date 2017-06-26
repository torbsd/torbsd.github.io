Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman999
Editors:
Date: 2017-06-26
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

##OpenBSD on a PC Engines Alix Board##

###Summary###

[PC Engines' Alix boards](http://pcengines.ch/alix.htm) are a useful hardware platform for a low-bandwidth Tor relay or bridge. A quiet and fanless platforum,  they feature a 32-bit 500MHz AMD Geode LX processor with 256MB of RAM. In this example, the [Alix 3d2 model](http://pcengines.ch/alix3d2.htm) will be the target platform. Note that AMD announced the [discontinuation of this processor](http://pcengines.ch/eol.htm), so a residential Tor bridge is an ideal final home for this hardware. The example could be utilized on many other embedded platforms.

Alix boards are fully supported by OpenBSD's [i386 platform](https://www.openbsd.org/i386.html). In this case the [OpenBSD -stable](https://www.openbsd.org/stable.html) branch will be installed. -stable releases happen at or before the first of May and November each year. Security updates are easily done remotely with [syspatch](http://man.openbsd.org/syspatch), while [-current](https://www.openbsd.org/faq/faq5.html#Flavors) would require physical or serial console access for more frequent snapshot updates.

The downside of choosing -stable over -current is that ports are not updated as frequently. OpenBSD only provides stable application releases in its ports tree, which means that the Tor-alpha ports and packages are not available.

###Hardware###

Enclosed in a case, Alix boards consume a minimal amount of space, only 16 cm at the longest dimension.

For storage, Alix boards need a compact flash card (CF). In this example a 8GB CF card will be employed, but a 4GB card could also be used. A CF card reader is also necessary.

A [bootable copy of OpenBSD](https://www.openbsd.org/faq/faq4.html#MkInsMedia) -i386 will be written to a USB flash drive for the install, which will be initially booted off a bootstrap x86 laptop. To ensure the bootstap laptop's hard drive is not overwritten, a cautious move would be to remove it temporarily.

Finally, a null modem cable with a "female" db9 connector is needed to access the device until [sshd]8(http://man.openbsd.org/sshd) is configured. Some [Alix boards](http://pcengines.ch/alix.htm) do provide a VGA port, but the Alix3d2 does not.

###Preparation###

The [full installation notes](https://ftp.openbsd.org/pub/OpenBSD/6.1/i386/INSTALL.i386) for OpenBSD's 6.1 i386 platform provides all the necessary steps for installation.

The first step is to ensure the CF card is clean, and doesn't includes any residual data.

The [dmesg 8](http://man.openbsd.org/dmesg) command displays the system's message buffer, which in this case shows that the 8GB (or 7815MB) CF card is assigned the /dev/sd2 device:

```
sd2 at scsibus4 targ 1 lun 1: <USB2.0, CompactFlashCard, \\001> SCSI0 0/direct removable
sd2: 7815MB, 512 bytes/sector, 16007040 sectors
```

To completely wipe the CF card, use [dd 1](http://man.openbsd.org/dd) to write random data to the device:

```


```_


The [OpenBSD mirror sites](https://www.openbsd.org/ftp.html) are available globally. The _miniroot-am335x-6.1fs_ file is available in the relative path of OpenBSD/6.1/armv7/ from the main mirror directory. For instance, to use the [ftp4 mirror in the US](https://ftp4.usa.openbsd.org/pub/OpenBSD/), navigate to the 6.1, then armv7 directory. OpenBSD maintains a simple version/architecture hierarchy in the mirror layout.

Downloading the install set files, those ending in .tgz, is not necessary as the full install will be done over the internet in this example.

To verify the integrity of the _miniroot-am335x-61.fs_ file, download the _SHA256_ file. For verifying the digital signature, also download the _SHA256.sig_ file. Instructions for checking both the file integrity and the digital signature on OpenBSD is available on [the project web site](https://www.openbsd.org/faq/faq4.html#Download).

Each operating system writes disk images differently to a microSD card and similar media. The Unix tool dd is avaible on most Unix and Unix-like systems.

On OpenBSD, assuming that /dev/sd1 is the microSD card, the boot image is written like this:

```
$ dd if=nstall61.fs of=/dev/rsd1c
```

Which should output something like:
```
491520+0 records in
491520+0 records out
251658240 bytes transferred in 545.317 secs (461489 bytes/sec)

```

To confirm the data is written to the microSD card, mount it and check the contents:

```
$ mount /dev/sd1a /mnt

$ ls /mnt/                                                                     
total 7382
drwxr-xr-x   4 root  wheel   512B Apr  1 16:23 ./
drwxr-xr-x  15 root  wheel   512B Jun 13 21:06 ../
drwxr-xr-x   3 root  wheel   512B Apr  1 16:23 6.1/
-rw-r--r--   1 root  wheel  85.2K Apr  1 16:23 boot
-rw-r--r--   1 root  wheel   3.5M Apr  1 16:23 bsd
drwxr-xr-x   2 root  wheel   512B Apr  1 16:23 etc/
```

###Install###

The installation step requires connecting to the BBB with the serial cable with an ethernet connection, with the installation microSD card inserted in the BBB.

Insert the microSD card into the slot on the bottom of the BBB board.

Next, the 4-pin TTL serial cable needs to be connected to the BBB.

There are four pins, black, green, white and red. Only three of the pins are used, and the red pin is not used.

pin 1: black

pin 4: green

pin 5: white

Using the USB power, boot the BBB, holding down the small button next to the xxxslot to 

The install target will be the eMMC storage on the BBB, and the microSD slot can be empty or used for other purposes. The 4GB of storage provided by the eMMC is more than adequate for full OpenBSD install. Earlier versions of OpenBSD's armv7 platform were restricted by slow input/output speeds to the eMMC, but this has been resolved.



###Maintenance###

As with other operating systems, both the base operating system and the applications require regular updates. OpenBSD provides simple mechanisms for updating both. [syspatch 8](http://man.openbsd.org/syspatch) enables painless binary security patching. [pkg_add](http://man.openbsd.org/pkg_add) with the [-u](http://man.openbsd.org/pkg_add#u) option should update the packages. At this point, the full /usr/ports tree needs to be populated and updated for package updates.

In this case, net/tor is the critical application to keep updated. First update the ports tree, then update the port.

```
$ cvs up -Pd

$ cd /usr/ports/net/tor

$ make update
```




{{footer.md}}
