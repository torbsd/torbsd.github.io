##OpenBSD -stable as a Bandwidth Authority##

##Introduction##

APU2 with an mSATA SSD

##Setup Full Disk Encryption (FDE)##

Boot off USB with install${V}.fs

At boot> prompt:

```
stty com0 115200
set tty com0
```

shell

```
dd if=/dev/random of=/dev/rsd0c bs=1m

fdisk -iy sd0

disklabel -E sd0

a, a, *, RAID, w, q

bioctl -c C -l sd0a softraid0
```
Encrypted disk device is now sd1

set password

```
cd /dev && sh MAKEDEV sd1

dd if=/dev/zero of=/dev/rsd1c bs=1m count=1
```

install

normal install process

UTC

reboot

###Configuration###

/etc/boot.conf

/etc/fstab add /tmp as swap

/etc/rc.conf.local

	sndiod_flags=NO
ntpd_flags=-s
slaacd_flags=NO

hostname FQDN?


/etc/doas.conf

copy public ssh keys to ~/.ssh

/etc/ssh/sshd_config
	Port
	AddressFamily inet
	ListenAddress (specific TCP port for sshd)
	PasswordAuthentication no 
	AllowAgentForwarding no 
	AllowTcpForwarding no 

Setup interfaces

trunk

###PreRequisite Packages###

pkg_add git

pkg_delete -a


