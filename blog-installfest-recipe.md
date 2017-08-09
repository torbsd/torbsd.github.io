###date###

<a id="installfest-recipe">A Recipe for Tor on *BSD Installfests</a> by gman999

By no means is this entry going to cover all the details, but consider this a useful guide to organizing, conducting and following up after a *BSD installfest for the purpose of creating Tor bridges.

####A Critical Mass of People in a Location####

The assumption is that there is either a user group or mailing list centered around some locale, or maybe a birds-of-a-feather session at a BSD conference. There are a good number of BSD conferences around the world annually, providing a good opening for anyone with the enthusiasm to conduct one.

After having a group of *BSD users congregated in some locale, determining a physical space for the installfest is next. Online events in places like IRC might work for some, but face-to-face interaction is a critical ingredient.

This location should have decent internet access, and will require a physical switch for most installs.

####Cables, Switches and Stuff####

Preparing the "infrastructure" for the event is critical. A missing switch or null modem can ruin an installfest. How many power outlets are available? Is there a need for power strips?

For the attendees, decide upon a hardware platform and BSD operating system verison is important. That will determine which install media to bring and in which form, serial console cables, and maybe even devices such as small LCDs with HDMI and VGA inputs.

In some cases, it might be possible to have attendees pre-pay for hardware and order in quantity for a discount. Even without a discount, if someone pays for hardware, the chances of them actually doing something with it improves.

####Which Hardware?####

An hour or so before the event, cables should be run, the switch(es) could be connected and internet connectivity tested.

Tor bridges running in homes can and should be on quiet, fanless embedded hardware, unless you have your own data center. The constant hum of a few internal server fans is not a recommended theme song for any adobe.

There are a good number of embedded hardware devices well-supported by the BSD projects, with ARMv7 and amd64 in particular good starting points. Of course, certain MIPS, PPC or even older i386 hardware could also work.

Some hardware to consider includes:

* PCEngines.ch's [APU2](http://pcengines.ch/apu2.htm), an amd64 platform. Critical accessories to remember include install media, for instance an SD card, along with a serial cable with a null modem and maybe an mSATA drive as the target media. Older [Alix](http://pcengines.ch/alix.htm) boards are also adequate for a decent bridge.

* The [BeagleBone Black](https://beagleboard.org/black) works well, and may be the best choice for an out-of-sight Tor bridge. BBBs don't use regular db9 serial cables, but rather [individual pinned serial cables](https://www.adafruit.com/product/954).

* Finally, the [Raspberry Pi](https://www.raspberrypi.org/) is another good option and is well-supported by FreeBSD in particular.

For all support hardware platforms, including non-x86 ones, look at the hardware compatibility lists for each BSD:

* [DragonFlyBSD](https://www.dragonflybsd.org/) supports on amd64 and i386 platforms

* [FreeBSD](https://www.freebsd.org/) includes Tier 1 support for only the amd64 and i386 platforms. However, support for ARM is strong, including a long list of [ARM boards](https://www.freebsd.org/platforms/arm.html#hw).

* [NetBSD](https://netbsd.org/) is known for the large array of [hardware plaforms](https://netbsd.org/about/features.html#multi-platform) it supports.

* [OpenBSD](https://www.openbsd.org/) also provides [strong support](https://www.openbsd.org/plat.html) beyond x86 platforms such as armv7 and MIPS.


