Title: TDP Frequently Asked Questions
CSS: torbsd.css
Author: gman999
Editors:
Date: 20150505
Note: These lines at the top are multimarkdown metadata; leave them.

# Frequently Asked Questions #

Below are some typical questions about __TDP__. Feel free to [contact us](/contact.html) for questions or comments not mentioned.

## If __TDP__ is concerned about operating system diversity, why does it just focus on BSD Systems, and not other operating systems such as Illuminos? ##

Our background and experience is in Unix and the BSDs, therefore that is the focus of __TDP__. It is critical to note that our code and materials, in addition to the licensing, respects established standards and provides liberal BSD licensing. __TDP__ is commited to portability and interoperability.

In other words, if someone wanted to take __TDP__ code and materials and utilize it to spawn a Plan 9 or BeOS project with the same eye on Tor diversity, __TDP__ groundwork should make that task easier.

## Why did Tor Browser work start with OpenBSD? Isn't FreeBSD more popular? ##

FreeBSD may very well be more widely used, but operating system usage statistics are wildly untrustworthy, particularly when the BSD license doesn't require users to publicize using BSD code.

While all the BSDs aim to be standards compliant, OpenBSD is the most orthodox in this respect. The tail(4) command won't even allow -f with multiple files. But if it runs on OpenBSD and is accepted into the base or ports trees, it is likely the easiest operating system to port software __from__. There are popular examples to mention, such as OpenSSH, arc4random, OpenNTPD and for those who only read Slashdot.org over the past year, LibreSSL is quickly gaining momentum as another piece of easily portable OpenBSD code.

With a production-quality OpenBSD Tor Browser port, FreeBSD, NetBSD, DragonFly BSD, etc., ports should be trivial.
