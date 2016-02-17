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

Spew output from TB is useful for investigating problems, or for finding problems that are not necessarily apparent to an end-user running TB.

To save spew to a file in the home directory, run tor-browser from an xterm(1) window:

    $ /usr/local/bin/start-tor-browser >~/20160101-spew0

* is a $HOME/.tor-browser created and correctly populated?

* visit specific "check" sites, such as [https://check.torproject.org/](https://check.torproject.org/) and [https://ip-check.info/](https://ip-check.info/) 

* do all the Firefox add-ons appear in Tools, Add-ons, Extensions with the correct versions and settings?

* are settings being saved with both "Privacy and Security Settings" and "Tor Network Settings" including bridges, slider, etc?

* GeoIP country data appearing in circuit status, i.e., right-clicking on the green onion icon?

* does "New Tor Circuit for this Site" works? Should reload page and change the circuit

* do all the knobs from /usr/local/lib/tor-browser-5.5/browser/defaults/preferences/all-openbsd.js get turned in about:config?

* can TB act as a relay?

* are pluggable transports operational?

* are a desktop icon and menu item created for Tor Browser?
(doesn't on XFCE, but should on KDE and Gnome)


{{footer.md}}
