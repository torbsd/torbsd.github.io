CSS: torbsd.css

# Tor Browser Build Errors and Notes #

20150509-gman999

    INPUT("../../../gfx/skia/SkBitmapFilter_opts_SSE2.o")
    INPUT("../../../gfx/skia/SkBitmapProcState_opts_SSE2.o")
    INPUT("../../../gfx/skia/SkBitmapProcState_opts_SSSE3.o")
    INPUT("../../../gfx/skia/SkBlitRect_opts_SSE2.o")
    INPUT("../../../gfx/skia/SkBlitRow_opts_SSE2.o")
    INPUT("../../../gfx/skia/SkBlurImage_opts_SSE2.o")
    INPUT("../../../gfx/skia/SkMorphology_opts_SSE2.o")
    INPUT("../../../gfx/skia/SkUtils_opts_SSE2.o")
    INPUT("../../../gfx/skia/SkXfermode_opts_none.o")

../../../dist/lib/libjs_static.a: could not read symbols: Memory exhausted
clang-3.5: error: linker command failed with exit code 1 (use -v to see invocation)
/usr/ports/pobj/tor-browser-4.0.8/torb-4.0-esr31.6.0/config/rules.mk:882: recipe for target 'libxul.so.1.0' failed
gmake[3]: *** [libxul.so.1.0] Error 1
gmake[3]: Leaving directory '/usr/ports/pobj/tor-browser-4.0.8/build-amd64/toolkit/library/build'
/usr/ports/pobj/tor-browser-4.0.8/torb-4.0-esr31.6.0/config/recurse.mk:95: recipe for target 'toolkit/library/build/libs' failed
gmake[2]: *** [toolkit/library/build/libs] Error 2
gmake[2]: Leaving directory '/usr/ports/pobj/tor-browser-4.0.8/build-amd64'
/usr/ports/pobj/tor-browser-4.0.8/torb-4.0-esr31.6.0/config/recurse.mk:39: recipe for target 'libs' failed
gmake[1]: *** [libs] Error 2
gmake[1]: Leaving directory '/usr/ports/pobj/tor-browser-4.0.8/build-amd64'
/usr/ports/pobj/tor-browser-4.0.8/torb-4.0-esr31.6.0/config/rules.mk:592: recipe for target 'all' failed
gmake: *** [all] Error 2
*** Error 2 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2764 '/usr/ports/pobj/tor-browser-4.0.8/build-amd64/.build_done')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:1950 '/usr/ports/packages/amd64/all/tor-browser-4.0.8.tgz')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2505 '_internal-package')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2485 'package')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:1967 '/var/db/pkg/tor-browser-4.0.8/+CONTENTS')
*** Error 1 in /usr/ports/mystuff/www/tbb/tor-browser (/usr/ports/infrastructure/mk/bsd.port.mk:2485 'install')

SOLUTION: ulimit -a, /etc/login.conf to infinity

*************************

20150511 server

>> Fetch http://ftp.fr.openbsd.org/pub/OpenBSD/distfiles//gtk+-2.24.27.tar.xz
ftp: Server does not support resume.
gtk+-2.24.27.tar.xz  44% |*************                 |  5760 KB    00:36 ETA
/usr: write failed, file system is full
ftp: Writing /usr/ports/distfiles/gtk+-2.24.27.tar.xz.part: No space left on device
*** Error 1 in /usr/ports/x11/gtk+2 (/usr/ports/infrastructure/mk/bsd.port.mk:2951 '/usr/ports/distfiles/gtk+-2.24.27.tar.xz': @lock=gtk+-2....)
*** Error 1 in /usr/ports/x11/gtk+2 (/usr/ports/infrastructure/mk/bsd.port.mk:2319 '_internal-fetch')
*** Error 1 in /usr/ports/x11/gtk+2 (/usr/ports/infrastructure/mk/bsd.port.mk:2572 '/usr/ports/pobj/gtk+-2.24.27/.extract_done')
*** Error 1 in /usr/ports/x11/gtk+2 (/usr/ports/infrastructure/mk/bsd.port.mk:1950 '/usr/ports/packages/amd64/all/gtk+2-2.24.27p2.tgz')
*** Error 1 in /usr/ports/x11/gtk+2 (/usr/ports/infrastructure/mk/bsd.port.mk:2505 '_internal-package')
*** Error 1 in /usr/ports/x11/gtk+2 (/usr/ports/infrastructure/mk/bsd.port.mk:2485 'package')
*** Error 1 in /usr/ports/x11/gtk+2 (/usr/ports/infrastructure/mk/bsd.port.mk:1967 '/var/db/pkg/gtk+2-2.24.27p2/+CONTENTS')
*** Error 1 in /usr/ports/x11/gtk+2 (/usr/ports/infrastructure/mk/bsd.port.mk:2485 'install')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2110 '/usr/ports/pobj/tor-browser-4.0.8/.dep-x11-gtk+2')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2572 '/usr/ports/pobj/tor-browser-4.0.8/.extract_done')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:1950 '/usr/ports/packages/amd64/all/tor-browser-4.0.8.tgz')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2505 '_internal-package')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2485 'package')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:1967 '/var/db/pkg/tor-browser-4.0.8/+CONTENTS')
*** Error 1 in /usr/ports/mystuff/www/tbb/tor-browser (/usr/ports/infrastructure/mk/bsd.port.mk:2485 'install')
    38056.72 real     27103.23 user      6589.17 sys
$ 


*******

20150511

../../../dist/lib/libjs_static.a: could not read symbols: Memory exhausted
clang-3.5: error: linker command failed with exit code 1 (use -v to see invocation)
/usr/ports/pobj/tor-browser-4.0.8/torb-4.0-esr31.6.0/config/rules.mk:882: recipe for target 'libxul.so.1.0' failed
gmake[3]: *** [libxul.so.1.0] Error 1
gmake[3]: Leaving directory '/usr/ports/pobj/tor-browser-4.0.8/build-amd64/toolkit/library/build'
/usr/ports/pobj/tor-browser-4.0.8/torb-4.0-esr31.6.0/config/recurse.mk:95: recipe for target 'toolkit/library/build/libs' failed
gmake[2]: *** [toolkit/library/build/libs] Error 2
gmake[2]: Leaving directory '/usr/ports/pobj/tor-browser-4.0.8/build-amd64'
/usr/ports/pobj/tor-browser-4.0.8/torb-4.0-esr31.6.0/config/recurse.mk:39: recipe for target 'libs' failed
gmake[1]: *** [libs] Error 2
gmake[1]: Leaving directory '/usr/ports/pobj/tor-browser-4.0.8/build-amd64'
/usr/ports/pobj/tor-browser-4.0.8/torb-4.0-esr31.6.0/config/rules.mk:592: recipe for target 'all' failed
gmake: *** [all] Error 2
*** Error 2 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2764 '/usr/ports/pobj/tor-browser-4.0.8/build-amd64/.build_done')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:1950 '/usr/ports/packages/amd64/all/tor-browser-4.0.8.tgz')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2505 '_internal-package')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:2485 'package')
*** Error 1 in . (/usr/ports/infrastructure/mk/bsd.port.mk:1967 '/var/db/pkg/tor-browser-4.0.8/+CONTENTS')
*** Error 1 in /usr/ports/mystuff/www/tbb/tor-browser (/usr/ports/infrastructure/mk/bsd.port.mk:2485 'install')
    14202.24 real     10927.88 user      1802.67 sys


*********************

/etc/login.conf

builders:\
        :cputime-max=infinity:\
#       :datasize-cur=33554432M:\
        :datasize-max=infinity:\
#       :stacksize-cur=9M:\
        :stacksize-max=infinity:\
        :maxproc-cur=512:\
        :maxproc-max=infinity:\
        :memorylocked-max=infinity:\
        :memoryuse-max=infinity:\
#       :openfiles-cur=128:\
        :openfiles-max=infinity:\
        :memoryuse-max=infinity:\
        :vmemoryuse-max=infinity:\
        :tc=default:

$ df -h
Filesystem     Size    Used   Avail Capacity  Mounted on
/dev/sd0a     1005M   54.6M    900M     6%    /
/dev/sd0k      298G    220M    283G     0%    /home
/dev/sd0d      3.9G    8.0K    3.7G     0%    /tmp
/dev/sd0f      2.0G    1.6G    227M    88%    /usr
/dev/sd0g     1005M    202M    753M    21%    /usr/X11R6
/dev/sd0h      9.8G    1.4G    7.9G    15%    /usr/local
/dev/sd0j      2.0G    2.0K    1.9G     0%    /usr/obj
/dev/sd0i      2.0G    2.0K    1.9G     0%    /usr/src
/dev/sd0e     27.5G   18.4M   26.1G     0%    /var
tmpfs         23.1G    4.0G   19.1G    18%    /usr/ports/pobj

*****
20150512

$ sudo make -j 4 install clean
Fatal: one category in www lang/python should match PKGPATH=openbsd-ports/www/tbb/tor-browser (in openbsd-ports/www/tbb/tor-browser)
*** Error 1 in /usr/ports/mystuff/openbsd-ports/www/tbb/tor-browser (/usr/ports/infrastructure/mk/bsd.port.mk:3564 '.BEGIN': @exit 1)

SOLUTION PATH PATH PATH
