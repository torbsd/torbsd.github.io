Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Data: 2016-02-10
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}


{{header.md}}

##Testing Tor Browser on OpenBSD##

This is a list of general testing to perform for each Tor Browser (TB) release on OpenBSD. The obvious starting point is an up-to-date OpenBSD/amd64 snapshot with synchronized ports/packages.

Spew output from TB is useful to investigating problems, or for finding problems that are not necessarily apparent.

To save spew to a file in the home directory, run start-tor-browser from an xterm window:

    $ /usr/local/bin/start-tor-browser >~/20160101-spew0

* does /usr/local/bin/start-tor-browser perform correct setup, such as a populated $HOME/.tor-browser?

* does /usr/local/bin/tor-browser work on subsequent uses?

* general web-perusing

* specific "check" sites, such as [https://check.torproject.org/](https://check.torproject.org/) and [https://ip-check.info/](https://ip-check.info/) 

* do all the Firefox add-ons appear in Tools, Add-ons, Extensions with the correct versions and settings?

* are settings being saved with both "Privacy and Security Settings" and "Tor Network Settings" including bridges, slider, etc?

* GeoIP data appearing in circuit status?

* "New Tor Circuit for this Site" works? Should reload page and change the 3-hop circuit

* can TB act as a relay?

* are pluggable transports operational?










{{footer.md}}
