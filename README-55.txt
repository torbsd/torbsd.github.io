Installing Tor Browser 5.5 for OpenBSD
"N-N-Nineteen Minus Ten Release"
20160205
The Tor BSD Diversity Project
https://torbsd.github.io/

WARNING
Remember that Tor Browser for OpenBSD is in development,
and should not be considered a robust solution for anonymity or
privacy.
USE AT YOUR OWN RISK.

This file, the Tor Browser and related packages are located at:

http://mirrors.nycbug.org/pub/snapshots/packages/amd64/

Previous releases are located in archive/

Update to the current OpenBSD snapshot and packages.

If necessary, delete previous versions of Tor Browser, such as this
example with version 5.0.6:

    $ doas pkg_delete tor-browser
    tor-browser-5.0.6: ok
    Read shared items: ok

The Firefox add-on ports also need to be explicity deleted.

    $ doas pkg_delete https-everywhere noscript tor-launcher torbutton

Or, to remove all unused dependencies on an OpenBSD system, including
the Tor-dependent ports, use pkg_delete(1):

    $ doas pkg_delete -a

Delete the previous version's $HOME/.tor-browser, if necessary:

	$ doas rm -rf .tor-browser/                                                    
Download these files to a temporary directory:

	tor-browser-5.5.tgz
	tor-launcher-0.2.7.8.tgz
	torbutton-1.9.4.3.tgz
	https-everywhere-5.1.2.tgz
	noscript-2.9.0.2.tgz

From that temporary directory, use pkg_add(1) to install the Tor Browser
package and the dependencies, which are unsigned:

    $ doas pkg_add tor-browser-5.5.tgz  
    UNSIGNED PACKAGE file:./https-everywhere-5.1.2.tgz: install anyway ? [y/N/a] a
    tor-browser-5.5:https-everywhere-5.1.2: ok
    tor-browser-5.5:torbutton-1.9.4.3: ok
    tor-browser-5.5:tor-launcher-0.2.7.8: ok
    tor-browser-5.5:gxmessage-3.4.3: ok
    tor-browser-5.5:noscript-2.9.0.2: ok
    tor-browser-5.5: ok
    --- +tor-browser-5.5 -------------------
    Please use the /usr/local/bin/start-tor-browser command to invoke Tor browser.
    UNSIGNED PACKAGES: tor-launcher-0.2.7.8, torbutton-1.9.4.3, noscript-2.9.0.2, tor-browser-5.5, https-everywhere-5.1.2

From an X Windows manager's xterm(1) window, run the following
command as a normal, unprivileged user:

	$ /usr/local/bin/start-tor-browser

Follow the dialog boxes to configure Tor Browser. Note any
relevant output in the xterm window. We enourage feedback
and patches.

To save verbose spew, dump the Tor Browser output to a file:

        $ /usr/local/bin/start-tor-browser >~/spew-file

The spew file is vital when reporting any problems.

The following message may appear if a Tor instance is already
running with non-default SocksPort, i.e., other than 9050.

    Unable to save Tor settings.
    Unable to set option: Failed to bind one of the listener ports.

In that case, either change the /etc/tor/torrc SocksPort back to
the default, or stop the previous instance of Tor to not conflict
with Tor Browser.
