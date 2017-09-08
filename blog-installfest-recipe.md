###date###

<a id="installfest-recipe">A Recipe for Tor on *BSD Installfests</a> by gman999

By no means is this entry going to cover all the details, but consider this a guide to organizing, conducting and following up after a *BSD installfest for the purpose of creating Tor bridges.

A BSD Tor Bridge installfest can provide several useful accomplishments:

* contribute more operating system diversity to the Tor network

* provide a goal to an installfest other than the usual target of laptops

* allow a collective environment to tinker with less-used small systems which are currently under heavy development in all the BSDs

Finally, a focused installfest can provide collective support and assistance to an array of users with differing experiences. What might take several hours from install to configuration can be achieved more efficiently with group feedback and insights.

####A Critical Mass of People in a Location####

The assumption is that there is either a user group or mailing list centered around some locale, or maybe a birds-of-a-feather session at a BSD conference for the installfest. There are a number of BSD conferences around the world annually, providing a good opening for anyone with the enthusiasm to conduct one.

After having a group of *BSD users congregated in some locale, determining a physical space for the installfest is next. Online events in places like IRC might work for some, but face-to-face interaction is a critical ingredient.

This location should have decent internet access, and will require a physical switch for most installs.

####Cables, Switches and Stuff####

Preparing the infrastructure for the event is critical. A missing switch or null modem can ruin an installfest. How many power outlets are available? Is there a need for power strips?

A digital projector with VGA and HDMI inputs is a useful addition. It can be used for any introductory presentation, and for collectively doing installs for all to watch.

For the attendees, decide upon hardware platforms and BSD operating system verisons is important. That will determine which install media to bring and in which form, serial console cables, and maybe even devices such as small LCDs with HDMI and VGA inputs.

In some cases, it might be possible to have attendees pre-pay for hardware and order in quantity for a discount. Even without a discount, if someone pays for hardware, the chances of them actually doing something with it improves.

####Which Hardware?####

An hour or so before the event, cables should be run, the switch(es) could be connected and internet connectivity tested.

Tor bridges running in homes can and should be on quiet, fanless embedded hardware, unless you have your own data center. The constant hum of server fans is not a recommended theme song for any adobe.

There are a good number of embedded hardware devices well-supported by the BSD projects, with ARMv7 and amd64 in particular good starting points. Of course, certain MIPS, PPC or even older i386 hardware could also work.

Some hardware to consider includes:

* PCEngines.ch's [APU2](http://pcengines.ch/apu2.htm), an amd64 platform. Critical accessories to remember include install media, for instance an SD card, along with a serial cable with a null modem and maybe an mSATA drive as the target media. Older [Alix](http://pcengines.ch/alix.htm) boards are also adequate for a decent bridge. Confirm that the BIOS version is current.

* The [BeagleBone Black](https://beagleboard.org/black) works well, and may be the best choice for an out-of-sight Tor bridge. BBBs don't use regular DB9 serial cables, but rather [individually pinned serial cables](https://www.adafruit.com/product/954).

* Finally, the [Raspberry Pi](https://www.raspberrypi.org/) is another good option and is well-supported by FreeBSD and NetBSD.

For all support hardware platforms, including non-x86 ones, look at the hardware compatibility lists for each BSD:

* [DragonFlyBSD](https://www.dragonflybsd.org/) supports on amd64 and i386 platforms

* [FreeBSD](https://www.freebsd.org/) includes Tier 1 support for only the amd64 and i386 platforms. However, support for ARM is strong, including a long list of [ARM boards](https://www.freebsd.org/platforms/arm.html#hw).

* [NetBSD](https://netbsd.org/) is known for the large array of [hardware plaforms](https://netbsd.org/about/features.html#multi-platform) it supports.

* [OpenBSD](https://www.openbsd.org/) also provides [strong support](https://www.openbsd.org/plat.html) beyond x86 platforms such as armv7 and MIPS.

####Conducting the Installfest####

In some cases, an opening introduction might be appropriate. __TDP's__ [current diversity statistics](http://torbsd.github.io/oostats.html) can be useful to make the case for a more diverse pool of bridges.

Installfests should be fun. With a critical mass, small groupings of people begin to work on common hardware. Seasoned developers can give insight to a newer person tinkering with a BSD.

The digital projector can be used periodically to display the status of a particular system, or to solicit insight or assistance, or even to reference a useful internet resource. Everyone should feel comfortable to grab the spotlight for a few minutes and generalize their experiences.

With larger groups, one or two wandering facilitators can help shift resources or hardware when appropriate, and maybe encourage participants to display their experiences.

####Beyond the Installfest####

The installfest should result in a certain quantity of bridges with some longevity. It shouldn't be a one-off exercise, but rather one that contributes more BSD bridges into the Tor ecosystem.

Consider followup discussions on an email list or IRC to provide further assistance.

Track the bridge usage on the Tor Project's [Atlas site](https://atlas.torproject.org/). Note that for bridges, the host's fingerprint is necessary to display information about the node.

__TDP__ is curious to not just hear about others' experiences with these installfests, but also any feedback.
