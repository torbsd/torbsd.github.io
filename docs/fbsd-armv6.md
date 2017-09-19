Date: 2017-09-18
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

##FreeBSD on a BeagleBone for a Tor Bridge##

###Summary###

[BeagleBones](http://beagleboard.org/bone/) are small ARM-based systems well-suited for many embedded systems, such as a Tor bridge. This example will use the most current revision of the BeagleBone Black, featuring a 1GHz AM335x ARM Cortex-A8 processor with 512MB of RAM.

FreeBSD is an ideal operating system for the BeagleBone. While the [arm platform](https://www.freebsd.org/platforms/arm.html) is classified as Tier 2, it is well-supported and is under regular development.

###Hardware###

There are several components required to built a FreeBSD Tor bridge on a BeagleBone.

* a BeagleBone Black

* a microSD card at least 4GB in size, although 8GB minimal is recommended

* a 5V power adapter, or for the install purposes, a [mini-B USB cable with a power source](https://en.wikipedia.org/wiki/Mini_usb#Mini_connectors)

* a USB-to-TTL serial console cable

* a public IP address, or a non-routable private IP address with port forwarding configured at the router/firewall

* a computer on which to download and write the FreeBSD system image to the microSD card. In this example a FreeBSD computer is used, but another BSD or even Linux should also work with little difference.

###Preparation###

In this documentation, pre-compiled images of the most current FreeBSD available from the FreeBSD mirrors will be employed. These images are built frequently, and are a quick path to configuring a production-ready FreeBSD system with little effort.

The first step is to download the correct FreeBSD image.

The most current branch of FreeBSD is 12.

With a web browser, navigate to:

    http://ftp.freebsd.org/pub/FreeBSD/snapshots/ISO-IMAGES/12.0/

This directory contains a number of different images for different architectures, including for the BeagleBone.

The syntax for the images is:

FreeBSD-_version_-_platform_-_architecture_-_hardware_-_date_-_subversionrelease_.img.xz

For instance, a recent file is:

    FreeBSD-12.0-CURRENT-arm-armv6-BEAGLEBONE-20170814-r322508.img.xz

Download then extract the file.

$ unxz FreeBSD-12.0-CURRENT-arm-armv6-BEAGLEBONE-20170814-r322508.img.xz

Decompressing the xz file will result in:

FreeBSD-12.0-CURRENT-arm-armv6-BEAGLEBONE-20170814-r322508.img

This file can then be written to the microSD card as the install media.

$ dd if=FreeBSD-12.0-CURRENT-arm-armv6-BEAGLEBONE-20170814-r322508.img of=/dev/da0 bs=1m
