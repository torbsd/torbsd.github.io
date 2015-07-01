Title: The Tor-BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors:
Date: 2015-06-29
X-Note: These lines at the top are multimarkdown metadata; leave them.

{{header.md}}

## TDP Tor Relays from BSD-Using Firms ##


__The Tor BSD Diversity Project__ is encouraging and enabling BSD-using firms to operate Tor relays.

In 2015, Mozilla [deployed](https://blog.mozilla.org/it/2015/01/28/deploying-tor-relays/) [twelve Tor relays](https://globe.torproject.org/#/search/query=mozilla). This is a significant step in increasing the bandwidth of the Tor network, in addition to extending the legitimacy of anonymous communications.

As of June 2015, BSD-running Tor relays account for under 5% of total network bandwidth. If firms that employed *BSD infrastructures contributed Tor relays, that number could change drastically.

__TDP__ is directly querying *BSD firms with adequate infrastructure and skilled staffs to replicate Mozilla's commendable efforts. Configuring and maintaining a Tor relay is a small cost for any entity seeking to strengthen the global anonymity network. __TDP__ is looking to not only encourage this step, but is also looking to assist these firms on various levels.

__TDP__ could either administer the server or assist the relay administrator(s). The [Tor-BSD mailing list](http://lists.nycbug.org/mailman/listinfo/tor-bsd) could be of assistance, not to mention the [Tor relays list](https://lists.torproject.org/cgi-bin/mailman/listinfo/tor-relays).

None of the current __TDP__ relays are exit nodes, however, examples such as [the Bynum Law Office PLLC node](http://tor-exit.bynumlaw.net/) should remove some of the relevant legal black magic.

A simplified torrc file is [here](corp-torrc.txt)

Our implementation recommendations include:

* use an IP space separate from your production network

* previously used hardware can be employed, but consider well-supported network interface cards and drivers

* optimizing FreeBSD may not be necessary, while OpenBSD requires some /etc/login.conf changes

* ensure there is a regular routine of maintaining and updating the relays' ports/packages and base operating system.

* for high-bandwidth relays, please consult these links for every insight

Specifically for firms that use BSDs, there are multiple benefits.

First, Tor relays can be a useful platform for assessing the BSDs' networking stacks. It's an opportunity to test portable BSD code such as LibreSSL and hardware encryption in a production scenario, as small changes in operations are not detrimental to the business.

Second, providing a more prominent role for the BSDs encourages the overwhelmingly youthful crowd of Tor relay administrators to begin trying and using BSDs. Potentially, the pool of BSD-familiar administrators could grow, strengthening the BSD ecosystem.

Finally, more Tor relays run by competent BSD sysadmins can mean more upstream patches and changes beneficial to everyone.

More generally, the case for corporate use of anonymity and privacy technologies has grown. Most profoundly noticeable among journalists, these technologies will become fundamental aspects of corporate IT infrastructure. And the safest means of ensuring the integrity of firms employing the Tor network is to contribute Tor relays themselves.

Please contact us with any questions on deploying Tor relays on BSDs. We hope our efforts not only increase the number of BSD-running Tor relays, but more generally strengthen the Tor network.

Note that if __TDP__ maintains access to any of these relays, we make sure they are marked as being part of the same ["Family"](https://www.torproject.org/docs/tor-manual.html.en#NodeFamily).

### Current TDP Corporate Tor Relays ###

<hostname>: hosted by <firm>, running xBSD

### Other Tor Relays We Are Aware of ###

<hostname>: hosted by <firm>, running xBSD
