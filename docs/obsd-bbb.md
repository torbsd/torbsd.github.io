Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman999
Editors:
Date: 2017-06-19
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

##Building a BeagleBone Black Tor Bridge on OpenBSD -stable##

###Summary###

OpenBSD is well-supported on [ARM version 7 hardware](https://www.openbsd.org/armv7.html) such as the [BeagleBone Black](https://beagleboard.org/black/). The AMX335x processor with 512MB of RAM is adequate for a Tor relay or bridge. As a small, fanless and low-power hardware device, BeagleBone Blacks (BBB) are ideal for residential [Tor bridges](https://www.torproject.org/docs/bridges/).

To minimize the need for frequent updates, this example will use the OpenBSD -stable branch, which is released on the first of May and November each year. Security updates to the operating system are simple with the new [syspatch](http://man.openbsd.org/syspatch) tool.

###Hardware###

The [BeagleBone Black](https://en.wikipedia.org/wiki/Beaglebone#BeagleBone_Black) launched in 2013, but remains easy to find online and in many computer stores.

Additional hardware required for installing OpenBSD on a BBB is a microSD card for the install of 2GB or larger, plus a TTL Serial Cable offered by online vendors such as [Adafruit](https://www.adafruit.com/product/954). 

OpenBSD will run from the 4GB eMMC, so a microSD card is not necessary after the install.

###Preparation###

The [full installation notes](https://ftp.openbsd.org/pub/OpenBSD/6.1/armv7/INSTALL.armv7) for the OpenBSD armv7 plaform for 6.1 provides all the necessary steps for installation.

To prepare the microSD card with the boot media the _miniroot-am335x-61.fs_ file is required. Note that the _miniroot-beagle-61.fs_ file is not for the BBB, but for the BeagleBoard.

The [OpenBSD mirror sites](https://www.openbsd.org/ftp.html) are available globally. The _miniroot-am335x-6.1fs_ file is available in the relative path of OpenBSD/6.1/armv7/ from the main mirror directory. For instance, to use the [ftp4 mirror in the US](https://ftp4.usa.openbsd.org/pub/OpenBSD/), navigate to the 6.1, then armv7 directory. OpenBSD maintains a simple version/architecture hierarchy in the mirror layout.

Downloading the install set files, those ending in .tgz, is not necessary as the full install will be done over the internet in this example.

To verify the integrity of the _miniroot-am335x-61.fs_ file, download the _SHA256_ file. For verifying the digital signature, also download the _SHA256.sig_ file. Instructions for checking both the file integrity and the digital signature on OpenBSD is available on [the project web site](https://www.openbsd.org/faq/faq4.html#Download).

Each operating system writes disk images differently to a microSD card and similar media. The Unix tool dd is avaible on most Unix and Unix-like systems.

On OpenBSD, assuming that /dev/sd1 is the microSD card, the boot image is written like this:

```
$ dd if=miniroot-am335x-61.fs of=/dev/rsd1c
```

Which should output something like:
```
36864+0 records in
36864+0 records out
18874368 bytes transferred in 96.719 secs (195145 bytes/sec)
```

To confirm the data is written to the microSD card, mount it and check the contents:

```
$ mount /dev/sd1a /mnt

$ ls /mnt/                                                                     
total 38920
drwxr-xr-x   2 root  wheel   512B Mar 25 16:39 ./
drwxr-xr-x  15 root  wheel   512B Jun 13 21:06 ../
-rwxr-xr-x   2 root  wheel  10.1M Mar 25 16:39 bsd*
-rwxr-xr-x   2 root  wheel  10.1M Mar 25 16:39 bsd.rd*
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
