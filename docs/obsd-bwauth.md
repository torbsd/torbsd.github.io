##OpenBSD -stable as a Bandwidth Authority##

This an attempt to simplify and customize running a Bandwidth Authority on OpenBSD.

Reference documents are:

[https://gitweb.torproject.org/torflow.git/tree/NetworkScanners/BwAuthority/README.BwAuthorities](https://gitweb.torproject.org/torflow.git/tree/NetworkScanners/BwAuthority/README.BwAuthorities)

[https://trac.torproject.org/projects/tor/wiki/doc/BandwidthAuthority/](https://trac.torproject.org/projects/tor/wiki/doc/BandwidthAuthority/)

##Introduction##

[APU2 from PCEngines](http://pcengines.ch/apu2c4.htm) with an mSATA SSD >=64G

serial console cable such as USB=>db9

Bandwidth throughput requirement check:

```
$ {wget --no-check-certificate|ftp -S dont} https://38.229.70.2/64M
```

##Setup Full Disk Encryption (FDE)##

Before installing OpenBSD, setup softraid full disk encryption.

Boot off USB with install${V}.fs

At _boot>_ prompt, set correct console settings:

```
> stty com0 115200
> set tty com0
```

Select __s__ for shell.

First the disk will be written with random data, then the disk will be setup as a fully encrypted device with a password set.

```
$ dd if=/dev/random of=/dev/rsd0c bs=1m

$ fdisk -iy sd0

$ disklabel -E sd0

a, a, *, RAID, w, q

$ bioctl -c C -l sd0a softraid0
```
Encrypted disk device is now sd1

set password

```
$ cd /dev && sh MAKEDEV sd1

$ dd if=/dev/zero of=/dev/rsd1c bs=1m count=1
```
Then type __install__ to begin OpenBSD installation process.

recommended partition sizes
setup separate partition for git repositories before /home
(need to add /tmp as mfs during installation)

UTC

reboot

###Configuration###

Confirm that console settings are implemented at boot in /etc/boot.conf

```
stty com0 115200
set tty com0
```

/etc/fstab add /tmp as swap

```
swap /tmp mfs rw,nodev,nosuid,-s=150M 0 0
```

/etc/rc.conf.local

```
sndiod_flags=NO
ntpd_flags=-s
slaacd_flags=NO
```

hostname FQDN?

/etc/doas.conf

```
permit nopass keepenv ${your_user} as root
```

copy public ssh keys to ~/.ssh

/etc/ssh/sshd_config

```
Port ${!22 to minimize zombie entries in the authlog}
AddressFamily inet
ListenAddress {specific TCP port for sshd}
PasswordAuthentication no 
AllowAgentForwarding no 
AllowTcpForwarding no 
```

All three interfaces will be used. The first two __em0__ and __em1__ will be bonded with [trunk(4)](http://man.openbsd.org/trunk), and __em2__ will be used just for SSHD. By default, the first interface (em0) is used for outbound traffic.

```
$ echo "up" >/etc/hostname.em0
$ echo "up" >/etc/hostname.em1
$ echo "trunkproto failover trunkport em0\ntrunkport em1\ninet ${trunk IP address and subnet}" >/etc/hostname.trunk0
```
For /etc/hostname.em2, set a normal [hostname.if(5)](http://man.openbsd.org/hostname.if).

###PreRequisite Packages and Git Repositories###

Install git and clone relevant Tor repositories.
```
pkg_add git
```
And in the dedicated partition:

```
$ git clone https://git.torproject.org/git/tor.git tor.git
$ git clone https://git.torproject.org/torflow.git torflow.git
```

Several packages are required:

* databases/py-sqlalchemy currently at version 1.0.14
* databases/py-sqlite2 at verison 2.8.3 as a dependency for sqlite3
* databases/py-elixir at version 0.7.1, which was deprecated from the ports tree in 2009. A port can be built from [here](https://github.com/torbsd/openbsd-ports/tree/master/databases/py-elixir).

```
$ pkg_add py-sqlalchemy
$ pkg_add py-sqlite2
```
To use the py-elixir port,

```
$ mkdir -p /usr/ports/mystuff/databases/py-elixir
```
Put the port files into the py-elixir/ directory, then install:

```
$ make install
```

pkg_add py-virtualenv

autoconf and automake are also required to run autogen.sh, install autoconf-2.69p2 and automake-1.9.6p12:

```
pkg_add autoconf-2.69p2
pkg_add automake-1.11.6p2
```

###Configuring the Tor Binary###

From torflow.git directory:

```
$ /bin/sh add_torctl.sh
Submodule 'TorCtl' (https://git.torproject.org/pytorctl.git) registered for path 'TorCtl'
Cloning into '/data/torflow.git/TorCtl'...
Submodule path 'TorCtl': checked out 'c8fcb25b079d52a20cafc7f7adf178e90ab76338'
```
Clone and install the tor-0.2.4 binary:

```
$ git checkout release-0.2.4
 Branch release-0.2.4 set up to track remote branch release-0.2.4 from origin.
Switched to a new branch 'release-0.2.4'
```

Set autoconf and automake versions and proceed:

automake 1.11

```
$ export AUTOCONF_VERSION=2.69
$ export AUTOMAKE_VERSION=1.1
$ /bin/sh ./autogen.sh
```
```
configure.ac: installing `./install-sh'
configure.ac: installing `./missing'
configure.ac:14: installing `./config.guess'
configure.ac:14: installing `./config.sub'
Makefile.am: installing `./compile'
Makefile.am: installing `./depcomp'
```

Lots of output:

```
$ /bin/sh ./configure --disable-asciidoc
$ make -j 4
```

Fail with tortls.o

```
depbase.Tpo" -c -o src/common/crypto.o src/common/crypto.c;  then mv -f "$depbase.Tpo" "$depbase.Po"; else rm -f "$depbase.Tpo"; exit 1; fi
src/common/tortls.c: In function 'tor_tls_server_info_callback':
src/common/tortls.c:1685: error: 'SSL' has no member named 'state'
src/common/tortls.c:1686: error: 'SSL' has no member named 'state'
src/common/tortls.c: In function 'tor_tls_handshake':
src/common/tortls.c:2136: error: 'SSL' has no member named 'state'
src/common/tortls.c:2146: error: 'SSL' has no member named 'state'
src/common/tortls.c: In function 'tor_tls_finish_handshake':
src/common/tortls.c:2181: error: 'SSL' has no member named 'mode'
*** Error 1 in target 'src/common/tortls.o'
*** Error 1 in . (Makefile:1431 'src/common/tortls.o')
*** Error 2 in /data/tor.git (Makefile:818 'all')
```

```
$ cd torflow/NetworkScanners/BwAuth

cp setup.sh setup.sh.org
```

change first line from /bin/bash to /bin/sh 

python2.7 python2.7-dev libpython2.7-dev libsqlite3-dev python-virtualenv autoconf2.13 automake make libevent-dev"

$ /bin/sh setup.sh           
which: python2.6: Command not found.
setup.sh[25]: pushd: not found
setup.sh[26]: ./add_torctl.sh: not found
setup.sh[27]: popd: not found
setup.sh[40]: pushd: not found
Cloning into 'tor'...
remote: Counting objects: 190381, done.
remote: Compressing objects: 100% (41550/41550), done.
remote: Total 190381 (delta 151060), reused 186877 (delta 148476)
Receiving objects: 100% (190381/190381), 42.06 MiB | 298.00 KiB/s, done.
Resolving deltas: 100% (151060/151060), done.
Branch release-0.2.8 set up to track remote branch release-0.2.8 from origin.
Switched to a new branch 'release-0.2.8'
configure.ac:14: require Automake 1.11, but have 1.9.6
autoreconf-2.69: automake failed with exit status: 1
configure: error: cannot find install-sh, install.sh, or shtool in "." "./.." "./../.."
make: no target to make.
setup.sh[40]: popd: not found
Already using interpreter /usr/local/bin/python2.7
New python executable in /data/torflow.git/NetworkScanners/BwAuthority/tor/bwauthenv/bin/python2.7
Also creating executable in /data/torflow.git/NetworkScanners/BwAuthority/tor/bwauthenv/bin/python
ERROR: The executable /data/torflow.git/NetworkScanners/BwAuthority/tor/bwauthenv/bin/python2.7 could not be run: [Errno 13] Permission denied
setup.sh[47]: source: not found
setup.sh[50]: pip: not found
setup.sh[51]: pip: not found
setup.sh[52]: peep: not found
cp: cron.sh: No such file or directory
crontab: usage error: file name must be specified for replace
usage: crontab [-u user] file
       crontab [-e | -l | -r] [-u user]
                (default operation is replace, per 1003.2)
        -e      (edit user's crontab)
	 -l      (list user's crontab)
        -r      (delete user's crontab)
crontab: usage error: file name must be specified for replace
usage: crontab [-u user] file
       crontab [-e | -l | -r] [-u user]
                (default operation is replace, per 1003.2)
        -e      (edit user's crontab)
        -l      (list user's crontab)
        -r      (delete user's crontab)
crontab: no crontab for gman
Prepared crontab. Current crontab: 
crontab: no crontab for gman

If we got this far, everything should be ready!

Start the scan with ./run_scan.sh
You can manually run ./cron-mine.sh manually to check results
Detailed logs are in ./data/scanner.*/bw.log.
Progress can also be inferred from files in ./data/scanner.*/scan-data


