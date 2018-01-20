##An OpenBSD Tor Relay on PCEngines' APU2##

Embedded devices are often underpowered with CPU and RAM, relegating them to low-bandwidth relays.

That's why [PCEngines](https://pcengines.ch) APU2 are worth a good look. With up to 4Gb of RAM, a 1GHz CPU and three Intel Pro gigabit network interfaces, APU2s are versatile and stable.

OpenBSD runs well on APU2s, and configured as a Tor relay or bridge, APU2s are ideal as residential hardware as they are fanless and run cool.

Some installation and configuration notes:

###Console Access###

As there is no video output such as VGA or HDMI on the APU2, locate communications are over serial console. The default and permanent speed on the APU2 is 115200.

###Full-Disk Encryption###

It is trivial to employ full-disk encryption on OpenBSD, and while not required, it's a good physical security measure particularly for remote hardware in less-trusted environments.

###Primary Storage with mSATA###

Purchase mSATA as the install target media for the APU2. Even a 16Gb mSATA device provides adequate space for a fully operating OpenBSD Tor relay or bridge.

###Install Media###

Boot off the install*.fs image on a USB stick, and install onto the mSATA device.

###Running OpenBSD -stable###

For ease of maintainability, use OpenBSD -stable as full system upgrades are only required once every six months. With new releases every May 1 and November 1, full-system upgrades can be scheduled. Tools like syspatch(8) make critical base system updates painless, and don't require the full source tree for upgrades.

###Updating Ports###

Binary package updates are not available on OpenBSD -stable, so maintaining a populated /usr/ports tree is vital. OpenBSD -stable ports only receive critical updates, but this frequently includes the net/tor port.

###A Working Disk Layout###

Here is an example of a working partition layout:

```
mount		partition	size	notes
/		a		750M
none		b		200M	swap
/var		d		1.5G
/var/tor	e		1G	separate partition for Tor data
/var/www	f		50M	separate partition for serving www traffic if necessary
/usr		g		4G
/usr/local	h		750M
/usr/ports	i		1.5G
/home		j		4.3G	remainder of disk space, which can be taken from for above partitions
```

After install, /etc/fstab is directly edited to add a 100Mb /tmp memory-based partition:

swap /tmp mfs rw,-s100M 0 0
