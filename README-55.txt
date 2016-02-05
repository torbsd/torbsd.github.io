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

	$ rm -rf ~/.tor-browser/

Install the latest packages:

    $ doas \
        env PKG_PATH=http://mirrors.nycbug.org/pub/snapshots/packages/amd64/ \
        pkg_add tor-browser

These packages are not signed.  You will see a prompt like:

    $ doas \
        env PKG_PATH=http://mirrors.nycbug.org/pub/snapshots/packages/amd64/ \
        pkg_add tor-browser
    UNSIGNED PACKAGE http://mirrors.nycbug.org/pub/snapshots/packages/amd64/noscript-2.9.0.2.tgz: install anyway ? [y/N/a]

Answer `y` for each individual package (there will be 5 such warnings) or
answer `a` the first time to make `pkg_add` assume `y` for the rest.
A complete transcript might look like:

    $ doas \
        env PKG_PATH=http://mirrors.nycbug.org/pub/snapshots/packages/amd64/ \
        pkg_add tor-browser
    UNSIGNED PACKAGE http://mirrors.nycbug.org/pub/snapshots/packages/amd64/noscript-2.9.0.2.tgz: install anyway ? [y/N/a] a
    tor-browser-5.5:noscript-2.9.0.2: ok
    tor-browser-5.5:torbutton-1.9.4.3: ok
    tor-browser-5.5:tor-launcher-0.2.7.8: ok
    tor-browser-5.5:https-everywhere-5.1.2: ok
    tor-browser-5.5: ok
    --- +tor-browser-5.5 -------------------
    Please use the /usr/local/bin/start-tor-browser command to invoke Tor browser.
    UNSIGNED PACKAGES: https-everywhere-5.1.2, tor-launcher-0.2.7.8, torbutton-1.9.4.3, noscript-2.9.0.2, tor-browser-5.5
    Extracted 644668743 from 644670364

To start it up run the following command as a normal, unprivileged user
in an xterm (or at least running X windows):

    $ start-tor-browser

Follow the dialog boxes to configure Tor Browser. Note any relevant
output in the xterm window. We encourage feedback and patches.

Current builds of the Tor browser packages have verbose debugging
output turned on to help us diagnose problems.  If you encounter an
issue please save the spew to a file and send it to us, e.g.:

    $ start-tor-browser >~/spew-file 2>&1

Will write all of the messages that come out of tor-browser to `spew-file`
in your home directory.

Tor browser's defaults are to start its tor instance listening on
`localhost:9150` for SOCKS and `localhost:9151` for control messages
so as not to conflict with the default settings for the `net/tor` port
(which are 9050 and no control socket).  If there are other programs
listening on either port 9150 or 9151 before Tor browser starts then
it will fail.  The following message may appear if such a conflict
occurs:

    Unable to save Tor settings.
    Unable to set option: Failed to bind one of the listener ports.

In that case, either change the /etc/tor/torrc SocksPort back to the
default (and likewise for ControlPort if apropos), or stop the
previous instance of Tor to not conflict with Tor Browser, e.g.:

    $ doas rcctl stop tor

If you cannot do either of these things for some reason then you can
also change Tor browser's port numbers by editing your
`~/.tor-browser/torrc` file.  The first time you run the
`start-tor-browser` command it will populate this directory.  Change
the lines that look like:

    SocksPort 9150
    ControlPort 9151

to have other, unused port numbers as per your situation and then
re-run `start-tor-browser`.
