###Building Small OpenBSD Systems###

OpenBSD can be customized to run on small hardware, such as Alix and APU boards from [PCEngines](https://www.pcengines.ch/) easily. While small ARMv7 and other architectures are available, this piece focuses on i386 and amd64 hardware.

These devices can provide an array of network functions, depending on needs and avaible hardware. Even sorely dated and severly underpowered [Soekris 4801](https://www.soekris.com/) with 267MHz Geode processor and a mere 128MB of RAM performs well as a remote console server or recursive DNS device.

This piece is meant as a guide to configuring the operating system, and makes only broad assumptions about the employed hardware. A small OpenBSD install should scale from a 15 year-old 4801 Soekris to an dual-core APU board with 4GB of RAM.

NOTE: there are OpenBSD build systems for the express purpose of embedded hardware, and they are both excellent solutions: [flashrd](https://www.nmedia.net/flashrd/) and a fork of flashrd [

##Stable or Current?##

OpenBSD maintains a strict schedule of stable releases May 1 and November 1. Within these six month intervals patches are released to deal with vulnerabilities and other necessary fixes.

While the stable release may seem to be the logical choice for a low-maintenance embedded system, others might consider using the current (or snapshots). OpenBSD's current branch is usually updated often, as frequent as several times a day to weekly at other times. And since all OpenBSD development happens on the current branch, the most current ports and packages are available on current.

One might choose the current branch in the following cases:

* there is regular physical access to the device, or consistent remote console

* the device is used for development purposes

* the most current version of third-party applications is required, either provided by a current OpenBSD ports tree or with the user doing the actual development

If those answers all elicit negative replies, one might choose the stable branch.

Updating OpenBSD Stable

With each six month OpenBSD release, updates to a stable system are necessary. In many embedded cases, a full upgrade not make sense, especially on small flash device storage. Rather, it might be easier to build a fresh system and reconfigure.

Patches are a necessary maintenance issue, although this task is not necessarily time-consuming.

A patch is a file that is applied to the local version of the source tree, then some aspect of the system is rebuilt, or the kernel itself, to update to the respective changes.

To simplify the process, one might consider:

* maintaining an updated version of the stable source tree, which means patches themself don't need to be applied, but rather only rebuilding the kernel or the relevant files is necessary.

* in some cases with space restrictions, maintaining a local copy of the source tree in /usr/src is difficult, in which /usr/src can reside on a USB device to be updated and mounted when updates are required.

* these two scripts, one for [pulling and extracting the patches](get_patch.sh) and the other for [rebuilding the kernel](kern.sh) make the upgrade process easier.

##Installation##

Some hardware allows OpenBSD to be directly installed, which means following the INSTALLATION notes is sufficient. However, in other cases, like installation to a 4GB compact flash card, an alternative process might be necessary.

##Disk Partitions##

The /etc/fstab(1) file determines th
