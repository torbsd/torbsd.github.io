 [%sep] [Testing obfs4proxy on FreeBSD](#welcome-obfs4-fbsd)

###20170807###

<a id="welcome-obfs4">Testing obfs4proxy on FreeBSD and OpenBSD</a> by gman999

The Tor Project's [Pluggable Transports](https://www.torproject.org/docs/pluggable-transports.html.en) are a mitigation measure against deep-packet inspection, a.k.a. DPI. Commonly deployed on Tor bridges, [obfs4proxy](https://github.com/Yawning/obfs4/blob/master/doc/obfs4-spec.txt) is the [most common PT in use](https://torbsd.github.io/oostats/bridges-trans-count.txt).

There is currently no official FreeBSD or OpenBSD support for obfs4, which means that the operating system diversity of obfs4proxy providers is [dismal](https://torbsd.github.io/oostats/bridges-trans-os.txt).

__TDP__ is working to change that.

While our Tor Browser for OpenBSD doesn't yet support PTs on the client side, we've made some significant steps recently.

Vinicius built [security/obfs4proxy](https://github.com/torbsd/freebsd-ports/tree/egypcio/security/obfs4proxy) with the two previously unported dependencies, [security/go-ed25519](https://github.com/torbsd/freebsd-ports/tree/egypcio/security/go-ed25519) and [security/go-siphash](https://github.com/torbsd/freebsd-ports/tree/egypcio/security/go-siphash) for FreeBSD.

We also have net/obfs4proxy for OpenBSD -current, ready for testing.

Within our [openbsd-ports project](https://github.com/torbsd/openbsd-ports) resides [net/obfs4proxy](https://github.com/torbsd/openbsd-ports/tree/master/net/obfs4proxy), along with the required and unofficially ported [devel/go-goptlib](https://github.com/torbsd/openbsd-ports/tree/master/devel/go-goptlib), [security/go-ed25519](https://github.com/torbsd/openbsd-ports/tree/master/security/go-ed25519), [security/go-siphash](https://github.com/torbsd/openbsd-ports/tree/master/security/go-siphash).

What can you do?

If you're running a FreeBSD or OpenBSD Tor bridge, grab the source and build it.

Adding obfs4proxy support to a Tor bridge is easy, with the addition of a single line:

```
ServerTransportPlugin obfs4 exec /usr/local/bin/obfs4proxy -enableLogging \
 -logLevel info managed
```

Note the logging options with _-enableLogging_ and _-logLevel info_. Neither is required, but watching the service on a bridge is useful, particularly in this phase of development.

With _info_ level logging enabled, the log, residing in the Tor data directory pt_state/obfs4proxy.log, should show something like this:

```
2017/08/05 18:03:29 [NOTICE]: obfs4proxy-0.0.7 - launched
2017/08/05 18:03:29 [INFO]: obfs4proxy - initializing server transport listeners
2017/08/05 18:03:29 [INFO]: obfs4 - registered listener: [scrubbed]:35549
2017/08/05 18:03:29 [INFO]: obfs4proxy - accepting connections
```

Feedback, comments and patches are appreciated, preferably as a GitHub issue for [FreeBSD](https://github.com/torbsd/freebsd-ports/issues) or [OpenBSD](https://github.com/torbsd/openbsd-ports/issues).

Both will be submitted to the respective ports trees in due time.

A final general note on obfsproxy. For obvious obfuscation purposes, the TCP port obfs4 listens on is randomized, although the same port will be used between restarts. That causes an issue for anyone running a bridge on a residential connection, where some form of port forwarding by port and protocol is necessary.

There is a simple work-around to that problem in the torrc file. Just add the following line with the preferred TCP port allowing a long-term setting for the necessary port forward:

```
ServerTransportListenAddr obfs4 0.0.0.0:$preferred_port
````

As expected, Yawning Angel's [obfs4 documentation](https://gitweb.torproject.org/pluggable-transports/obfs4.git/tree/README.md) is all you really need.
