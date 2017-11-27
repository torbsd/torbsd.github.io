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

OpenBSD is well-supported on [ARM version 7 hardware](https://www.openbsd.org/armv7.html) such as the [BeagleBone Black](https://beagleboard.org/black/). The AMX335x processor with 512MB of RAM is adequate for a Tor relay or bridge. As a small, fanless and low-power hardware device, BeagleBone Blacks (BBB) are ideal for residential [Tor bridges](https://www.torproject.org/docs/bridges/), or any other location where a quiet, low-power server can be located.

As a Tor node, OpenBSD on a BeagleBone Black provides the benefit of more diversity to the Tor network. First, as Linux kernel-based operating systems account for some 95% of Tor public relays, OpenBSD is a distinct system which can disrupt the monoculture. OpenBSD's security approach is different, it's methods of randomly generating numbers is different, it uses [LibreSSL](https://www.libressl.org/) as opposed to the more common OpenSSL, among many other differences.

Additionally, most public Tor relays run on Intel/x86 computers, which represents another monoculture. Increasing diversity of hardware platforms in the Tor network potentially mitigate Intel/x86-specific vulnerabilities. Currently, most low-level hardware attacks are aimed at the Intel/x86 architecture.

To minimize the need for frequent updates, this example will use the OpenBSD -stable branch, which is released on the first of May and November each year. Security updates to the operating system are simple with the new [syspatch](http://man.openbsd.org/syspatch/) tool. The downside of this decision is OpenBSD's -stable ports are not updated as frequently as the -current branch.

OpenBSD only provides stable application releases in its ports tree, which means that the Tor-alpha ports and packages are not available.

###Hardware###

The [BeagleBone Black](https://en.wikipedia.org/wiki/Beaglebone#BeagleBone_Black) launched in 2013, but remains easy to find online and in many computer stores with several revisions since.

Additional hardware required for installing OpenBSD on a BBB is a microSD card for the install of 2GB or larger, plus a TTL Serial Cable offered by online vendors such as [Adafruit](https://www.adafruit.com/product/954/). 

OpenBSD will run from the 4GB eMMC. The microSD card is only necessary for the install.

###Preparation of Install Media###

The [full installation notes](https://ftp.openbsd.org/pub/OpenBSD/6.1/armv7/INSTALL.armv7) for the OpenBSD armv7 plaform for 6.1 provides all the necessary steps for installation.

To prepare the microSD card with the boot media the _miniroot-am335x-61.fs_ file is required. Note that the _miniroot-beagle-61.fs_ file is not for the BBB, but for the BeagleBoard.

The [OpenBSD mirror sites](https://www.openbsd.org/ftp.html) are available globally. The _miniroot-am335x-6.1fs_ file is available in the relative path of OpenBSD/6.1/armv7/ from the main mirror directory. For instance, to use the [ftp4 mirror in the US](https://ftp4.usa.openbsd.org/pub/OpenBSD/), navigate to the 6.1, then armv7 directory. OpenBSD maintains a simple version/architecture hierarchy in the mirror layout.

Downloading the install set files, those ending in .tgz, is not necessary as the full install will be done over the internet in this example.

To verify the integrity of the _miniroot-am335x-61.fs_ file, download the _SHA256_ file. For verifying the digital signature, also download the _SHA256.sig_ file. Instructions for checking both the file integrity and the digital signature on OpenBSD is available on [the project web site](https://www.openbsd.org/faq/faq4.html#Download).

Each operating system writes disk images differently to a microSD card and similar media. The Unix tool dd is avaible on most Unix and Unix-like systems.

On OpenBSD, assuming that /dev/sd1 is the microSD card, the boot image is written with dd(1):

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

Unmount /mnt to finish the preparation:
```
$ umount /mnt
```

###Booting the Beagle Bone###

The installation step requires connecting to the BBB with the serial cable with an ethernet connection, with the installation microSD card inserted in the BBB.

Insert the microSD card into the slot on the bottom of the BBB board.

Next, the 4-pin TTL serial cable needs to be connected to the BBB.

There are four pins, black, green, white and red. Only three of the pins are used. The red pin is not used.

Match the cable color to the appropriate pin, where pin 1 is labelled J1 on the BeagleBone.

pin 1: black

pin 4: green

pin 5: white

Using the USB power, boot the BBB, holding down the small button next to the microSD slot, which is labeled S2 to the side.

The install target will be the eMMC storage on the BBB, and the microSD slot can be empty or used for other purposes. The 4GB of storage provided by the eMMC is more than adequate for full OpenBSD install.

###Installing OpenBSD to the BeagleBone###

The boot process will display the following:

```
U-Boot SPL 2017.03 (Mar 26 2017 - 16:58:08)
Trying to boot from MMC2
MMC partition switch failed
*** Warning - MMC partition switch failed, using default environment

reading u-boot.img
reading u-boot.img


U-Boot 2017.03 (Mar 26 2017 - 16:58:08 -0600)

CPU  : AM335X-GP rev 2.0
I2C:   ready
DRAM:  512 MiB
MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
*** Warning - bad CRC, using default environment

<ethaddr> not set. Validating first E-fuse MAC
Net:   cpsw, usb_ether
Press SPACE to abort autoboot in 2 seconds
switch to partitions #0, OK
mmc0 is current device
SD/MMC found on device 0
** Invalid partition 1 **
** Invalid partition 1 **
switch to partitions #0, OK
mmc0 is current device
Failed to mount ext2 filesystem...
** Unrecognized filesystem type **
switch to partitions #0, OK
mmc0 is current device
SD/MMC found on device 0
** Invalid partition 2 **
switch to partitions #0, OK
mmc1(part 0) is current device
Scanning mmc 1:1...
reading /am335x-boneblack.dtb
34643 bytes read in 11 ms (3 MiB/s)
Found EFI removable media binary efi/boot/bootarm.efi
reading efi/boot/bootarm.efi
64684 bytes read in 16 ms (3.9 MiB/s)
## Starting EFI application at 82000000 ...
Scanning disks on usb...
Scanning disks on mmc...
MMC Device 2 not found
MMC Device 3 not found
Found 6 disks
>> OpenBSD/armv7 BOOTARM 0.5
boot> 
```
At the _boot>_ prompt, type _bsd.rd_, which will continue the boot process:

```
boot> bsd.rd
booting sd0a:bsd.rd: 2151556+7983908+438824 [80+301248+143324]=0xa84fd4

OpenBSD/armv7 booting ...
arg0 0xc0d84fd4 arg1 0xe05 arg2 0x88000000
Allocating page tables
freestart = 0x80d85000, free_pages = 127611 (0x0001f27b)
IRQ stack: p0x80db3000 v0xc0db3000
ABT stack: p0x80db4000 v0xc0db4000
UND stack: p0x80db5000 v0xc0db5000
SVC stack: p0x80db6000 v0xc0db6000
Creating L1 page table at 0x80d88000
Mapping kernel
Constructing L2 page tables
undefined page pmap board type: 3589
Copyright (c) 1982, 1986, 1989, 1991, 1993
	The Regents of the University of California.  All rights reserved.
Copyright (c) 1995-2017 OpenBSD. All rights reserved.  https://www.OpenBSD.org

OpenBSD 6.1 (RAMDISK) #81: Sat Apr  1 19:47:29 MDT 2017
    deraadt@armv7.openbsd.org:/usr/src/sys/arch/armv7/compile/RAMDISK
real mem  = 536870912 (512MB)
avail mem = 512077824 (488MB)
mainbus0 at root: TI AM335x BeagleBone Black
cpu0 at mainbus0: ARM Cortex A8 R3 rev 2 (ARMv7 core)
cpu0: DC enabled IC enabled WB disabled EABT branch prediction enabled
cpu0: 32KB(64b/l,4way) I-cache, 32KB(64b/l,4way) wr-back D-cache
omap0 at mainbus0
prcm0 at omap0 rev 0.2
dmtimer0 at omap0 rev 3.1
dmtimer1 at omap0 rev 3.1
simplebus0 at mainbus0: "ocp"
simplebus1 at simplebus0: "l4_wkup"
simplebus2 at simplebus1: "scm"
ompinmux0 at simplebus2
intc0 at simplebus0 rev 5.0
omgpio0 at simplebus0: rev 0.1
gpio0 at omgpio0: 32 pins
omgpio1 at simplebus0: rev 0.1
gpio1 at omgpio1: 32 pins
omgpio2 at simplebus0: rev 0.1
gpio2 at omgpio2: 32 pins
omgpio3 at simplebus0: rev 0.1
gpio3 at omgpio3: 32 pins
com0 at simplebus0: ti16750, 64 byte fifo
com0: console
tiiic0 at simplebus0 rev 0.11
iic0 at tiiic0
"ti,tps65217" at iic0 addr 0x24 not configured
"at,24c256" at iic0 addr 0x50 not configured
"nxp,tda998x" at iic0 addr 0x70 not configured
tiiic1 at simplebus0 rev 0.11
iic1 at tiiic1
"at,24c256" at iic1 addr 0x54 not configured
"at,24c256" at iic1 addr 0x55 not configured
"at,24c256" at iic1 addr 0x56 not configured
"at,24c256" at iic1 addr 0x57 not configured
ommmc0 at simplebus0
sdmmc0 at ommmc0: 4-bit, sd high-speed, mmc high-speed
ommmc1 at simplebus0
sdmmc1 at ommmc1: 1-bit
omdog0 at simplebus0 rev 0.1
cpsw0 at simplebus0: version 1.12 (0), address 90:59:af:5b:20:11
ukphy0 at cpsw0 phy 0: Generic IEEE 802.3u media interface, rev. 1: OUI 0x0001f0, model 0x000f
scsibus0 at sdmmc0: 2 targets, initiator 0
sd0 at scsibus0 targ 1 lun 0: <Sandisk, SA04G, 0010> SCSI2 0/direct removable
sd0: 3724MB, 512 bytes/sector, 7626752 sectors
scsibus1 at sdmmc1: 2 targets, initiator 0
sd1 at scsibus1 targ 1 lun 0: <SD/MMC, MMC02G, 0000> SCSI2 0/direct removable
sd1: 1832MB, 512 bytes/sector, 3751936 sectors
boot device: sd0
root on rd0a swap on rd0b dump on rd0b
WARNING: CHECK AND RESET THE DATE!
erase ^?, werase ^W, kill ^U, intr ^C, status ^T

Welcome to the OpenBSD/armv7 6.1 installation program.
(I)nstall, (U)pgrade, (A)utoinstall or (S)hell? 
```
At that prompt, type _I_ for install. User replies are highlighted below:

```
At any prompt except password prompts you can escape to a shell by
typing '!'. Default answers are shown in []'s and are selected by
pressing RETURN.  You can exit this program at any time by pressing
Control-C, but this can leave your system in an inconsistent state.

Terminal type? [vt220] (enter)

System hostname? (short form, e.g. 'foo') bridge

Available network interfaces are: cpsw0.
Which network interface do you wish to configure? (or 'done') [cpsw0] 

Pv4 address for cpsw0? (or 'dhcp' or 'none') [dhcp] 
DHCPDISCOVER on cpsw0 - interval 1
DHCPOFFER from 192.168.27.1 (00:0d:b9:1f:57:d4)
DHCPREQUEST on cpsw0 to 255.255.255.255
DHCPACK from 192.168.27.1 (00:0d:b9:1f:57:d4)
bound to 192.168.27.118 -- renewal in 3501 seconds.
IPv6 address for cpsw0? (or 'rtsol' or 'none') [none] 
Available network interfaces are: cpsw0.
Which network interface do you wish to configure? (or 'done') [done] 
Using DNS domainname localdomain
Using DNS nameservers at 192.168.27.1

Password for root account? (will not echo) 

Password for root account? (again) 
Start sshd(8) by default? [yes] 
Setup a user? (enter a lower-case loginname, or 'no') [no] user 
Full name for user user? [user] user
Password for user user? (will not echo) 
Password for user user? (again) 
WARNING: root is targeted by password guessing attacks, pubkeys are safer.
Allow root ssh login? (yes, no, prohibit-password) [no] 

Available disks are: sd0 sd1.
Which disk is the root disk? ('?' for details) [sd0] ?
sd0: Sandisk SA04G (3.6G)
sd1: SD/MMC MMC02G (1.8G)
Available disks are: sd0 sd1.
Which disk is the root disk? ('?' for details) [sd0] sd1 
Disk: sd1       geometry: 233/255/63 [3751936 Sectors]
Offset: 0       Signature: 0xAA55
            Starting         Ending         LBA Info:
 #: id      C   H   S -      C   H   S [       start:        size ]
-------------------------------------------------------------------------------
*0: 0C      0  32  33 -      2  42  40 [        2048:       32768 ] FAT32L      
 1: 00      0   0   0 -      0   0   0 [           0:           0 ] unused      
 2: 00      0   0   0 -      0   0   0 [           0:           0 ] unused      
 3: A6      2  42  41 -    233 139  34 [       34816:     3717120 ] OpenBSD     
Use (W)hole disk$ or (E)dit the MBR? [whole] w
Creating a msdos partition and an OpenBSD partition for rest of sd1...done.
/dev/rsd1i: 32668 sectors in 8167 FAT16 clusters (2048 bytes/cluster)
bps=512 spc=4 res=1 nft=2 rde=512 sec=32768 mid=0xf8 spf=32 spt=63 hds=255 hid=2048
The auto-allocated layout for sd1 is:
#                size           offset  fstype [fsize bsize   cpg]
  a:          1758.3M            34816  4.2BSD   2048 16384     1 # /
  b:            56.7M          3635744    swap                    
  c:          1832.0M                0  unused                    
  i:            16.0M             2048   MSDOS                    
Use (A)uto layout, (E)dit auto layout, or create (C)ustom layout? [a] 


###Maintenance###

As with other operating systems, both the base operating system and the applications require regular updates. OpenBSD provides simple mechanisms for updating both. [syspatch 8](http://man.openbsd.org/syspatch/) enables painless binary security patching. [pkg_add](http://man.openbsd.org/pkg_add/) with the [-u](http://man.openbsd.org/pkg_add#u) option should update the packages. At this point, the full /usr/ports tree needs to be populated and updated for package updates.

In this case, net/tor is the critical application to keep updated. First update the ports tree, then update the port.

```
$ cvs up -Pd

$ cd /usr/ports/net/tor

$ make update
```




{{footer.md}}
