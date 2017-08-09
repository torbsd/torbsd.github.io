Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors:
Date: 2015-06-29
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

## TDP Tor Relays from BSD-Using Firms ##


__The Tor BSD Diversity Project__ is encouraging and enabling BSD-using firms to operate Tor relays.

In 2015, Mozilla [deployed](https://blog.mozilla.org/it/2015/01/28/deploying-tor-relays/) [twelve Tor relays](https://globe.torproject.org/#/search/query=mozilla). This is a significant step in increasing the bandwidth of the Tor network and extending the legitimacy of anonymous communications.

As of June 2015, BSD-running Tor relays account for under 5% of total network bandwidth. If firms that employed *BSD infrastructures contributed Tor relays, that number could change drastically.

__TDP__ is directly querying *BSD firms with adequate infrastructure and staff to replicate Mozilla's commendable efforts. Configuring and maintaining a Tor relay is a small cost for any entity seeking to strengthen the global anonymity network. __TDP__ is looking to not only encourage this step, but also to assist these firms on various levels.

__TDP__ could either administer the server or assist the relay administrator(s). The [Tor-BSD mailing list](http://lists.nycbug.org/mailman/listinfo/tor-bsd/) could be of assistance, not to mention the [Tor relays list](https://lists.torproject.org/cgi-bin/mailman/listinfo/tor-relays/).

It is not necessary to run an exit node. Rather, a high-bandwidth relay or bridge could have a significant impact for the purposes on operating system diversity and available bandwidth.

A simplified, well-commented torrc file is [here](torrc.txt)

Our implementation recommendations include:

* use an IP space separate from the production network

* keep the relays *physically* separate from the production network

* previously used hardware can be employed, but consider well-supported network interface cards and drivers for high-bandwidth relays

* optimizing FreeBSD may not be necessary, while changes for other BSDs are quite simple

* OpenBSD requires some /etc/login.conf changes, and the ports/packages only includes the stable version of Tor, but with a little effort, run and maintain Tor on a recent snapshot

* ensure there is a regular routine of maintaining and updating the relays' ports/packages and base operating system, especially the SSL implementation

* particular attention should be made to keeping the Tor port/package updated, as anonymity is an "arms race" that can require critical changes to the code

* consider using the alpha version of Tor as opposed to the stable version, as the former version gets more attention

* in the case the entity is operating more than one relay, make sure the [MyFamily setting](https://www.torproject.org/docs/tor-manual.html.en#MyFamily) is designated in the torrc file

* for high-bandwidth relays, please consult these links for every insight

For firms that use BSDs, there are multiple benefits in running Tor relays.

First, Tor relays can be a useful platform for assessing the BSDs' networking stacks. It's an opportunity to test portable BSD code such as LibreSSL and hardware encryption in a production scenario, as system changes are not detrimental to the business.

Second, providing a more prominent role to the BSDs encourages the overwhelmingly youthful crowd of Tor relay users and administrators to begin trying and using BSDs. Potentially, the pool of BSD-familiar administrators could grow, strengthening the entire BSD ecosystem.

Finally, more Tor relays run by competent BSD sysadmins can mean more upstream patches and changes beneficial to everyone.

More generally, the case for corporate use of anonymity and privacy technologies has grown. Most profoundly noticeable among journalists, these technologies will become fundamental aspects of corporate IT infrastructure. The safest means of ensuring the integrity of firms employing the Tor network is to contribute Tor relays themselves.

Every firm has an interest in anonymity and privacy technologies, particularly in a competitive global economy. Industrial espionage is the norm, not the exception. Firms' activities cross borders as a norm, and the globe is saturated by surveillance and censorship by a variety of hostile parties. Tor is a critical tool in mitigating such threats.

Please contact us with any questions on deploying Tor relays on BSDs. We hope our efforts increase the number of BSD-running Tor relays, simultaneously strengthening the Tor network.

### Current TDP Corporate Tor Relays ###

*verbal agreement for two relays on 100mbps pipes at a provider*

{{footer.md}}
