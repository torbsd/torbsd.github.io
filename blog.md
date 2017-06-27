Title: The Tor BSD Diversity Project
CSS: torbsd.css
Author: gman
Editors: attila
Date: 2015-10-29
X-Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

##A Blog, or a Central Location for Announces and Notes##

__June 2017__

[Back to the Buildbot](#back-to-buildbot) [%sep] [BSD VPS Providers Needed](#bsd-vps)

__April 2017__

[Tor Summit 2017 in Amsterdam](#summit-2017-amsterdam) [%sep] [Android Overtaking Windows and OS Diversity](#android-takeover) [%sep] [What Motivates You to Run a Tor Relay?](#tor-motives)

__March 2017__

[BeagleBone Online and Busy](#busy-bbb) [%sep] [Tor Relay on a BeagleBone Black Running OpenBSD -current](#obsd-bbb) [%sep] [Calling All BSD Firms](#calling-bsd) [%sep] [Amsterdam in March](#tsummit-amsterdam)

__February 2017__

[Running OpenBSD -current for Tor Relays?](#current-relays)

__December 2016__

[Welcome Aboard, Vinicius](#vinicius)

__November 2016__

[In The Tree](#inthetree)

__October 2016__

[More Bananas](#morebananas) [%sep] [signify(1) Sanity](#signifysanity) [%sep] [Test Tor Browser 6.0.5 for OpenBSD](#test605)  [%sep]  [Replying to Tor Blog Comments](#torblog0)

__September 2016__

[Where Things Stand](#current0)

__August 2016__

[The Buildbot Needs BSD Relays](#buildbot)

__June 2016__

[So Much Quiet Progress](#quiet-progress)

__March 2016__

[TB 5.5 on the Current Snapshots](#tb-snaps-status2) [%sep] [Porting PETs Updates](#portpets-up) [%sep] [March 10 OpenBSD Snapshots](#tb-snaps-status1) [%sep] [TDP at BSDCan 2016](#bsdcan0) [%sep] [TB 5.5 and i386/amd64 Snapshots](#tb-snaps-status0)

__February 2016__

[TB 5.5 and More New Snapshots](#tb55snaps1) [%sep] [TB 5.5 and New Snapshots](#tb55snaps) [%sep] [Onto the Next Phase](#next-phase) [%sep] [Tor Browser Releases](#tb-releases) [%sep] [Tor Browser 5.5 Ports Tagged](#tb-55-tagged)

__January 2016__

[Still Plugging Away](#still-here) [%sep] [Tor-in-a-Box?](#torbox)

__December 2015__

[Notes From The Front](#notes-from-the-front) [%sep] [Announcing Porting PETs](#pp-announce) [%sep] [Thinking About 2016](#2016-events)


__November 2015__

[PETs Porting Targets](#pets-ports) [%sep] [The Case of the Brazil Relays](#br-case) [%sep] [TB 5.0.3 Packages Updated, Again](#tb-update-again) [%sep] [Coming Soon: Quick-and-Dirty Reports](#dirty-reports) [%sep] [Thoughts on Reproducible Builds](#repro-builds) [%sep] [It's Up to You](#up-to-you)

__October 2015__

[Updated Tor Browser Packages](#tb-update) [%sep] [The BSD Relay Guides](#relay-guides) [%sep] [Our First Bells](#first-bells) [%sep] [Beyond OS Diversity](#beyond-os) [%sep] [Tor Browser version 5.0.3 for OpenBSD](#tb-5.0.3)

[From the Attic](#attic)

###20170627###

<a id="bsd-vps">BSD VPS Providers Needed</a> by gman999

One of __TDP's__ recent projects is accumulating a list of virtual private server services (VPS) that provide a BSD option.

VPS's are generally inexpensive services that enable the user to only concern themselves with software configuration, and not be bothered with hardware or basic operating system setup. In the pre-Cloud era, VPS providers were the "other people's computers" that users outsourced their systems to.

The same shortcomings of cloud services apply to VPS providers. You don't control the hardware. Your files are likely viewable by users up the directory hierarchy. The entropy source or pool is a single source for multiple systems. The same time drift applies to all time-keeping services.

Nevertheless, VPS services are often cheap and provide a good spread in terms of geography. All a provider really needs is a few server-grade computers and a decent network connection. VPS's are still a gateway drug to bare-metal servers, although it seems more and more of these gateway users stop at stage one.

Cheap systems with a public IP are also a great way to tinker with a new operating system.

For this reason, __TDP__ created this list of BSD VPS providers. Some explicitly deny running Tor as a server. Some just reference vague "proxy services." Others don't mention Tor or proxies at all.

[https://github.com/torbsd/torbsd.github.io/blob/master/docs/bsd-vps.md](https://github.com/torbsd/torbsd.github.io/blob/master/docs/bsd-vps.md)

Our current fields, with comma-separated values to easy shell manipulation include:

* provider name
* www site
* 1/0 for FreeBSD, NetBSD, OpenBSD and other BSDs
* type of provider, such as Xen, VMWare, FreeBSD Jails, KVM or "the cloud", although we are still wondering what that exactly means
* the contact and the contact method, based on our future dialog
* the URL of the acceptable user policies/terms of service, where providers usually state forbidden activities
* the starting price for the cheapest VPS option
* the two-digit country code(s) of the VPS facilities
* 1/0 for IPv6 support
* and finally, any relevant notes, like the odd persistence of Cloudflare for VPS web sites, when one would imagine that a solid provider would host their own web site

The list is a start with currently just under 70 VPS providers listed. Input through various channels already started, and __TDP__ intends to update the list over the coming months. A first draft email and open letter addressed to the providers were drafted, and we are looking to speak directly to at least some of the better-known BSD VPS providers.

We may be able to convince a few to allow public Tor relays, or at least published bridges. These providers could be new BSD users' gateway drug into the world of BSD Tor nodes. Running a Tor relay shouldn't be considered a particularly risky activity. Maybe we can adjust that perception.

Let us know any input via email or GitHub, and we'll be glad to make updates.

###20170626###

<a id="back-to-buildbot">Back to the Buildbot</a> by gman999

Christian S.'s [Tor BSD Buildbot](https://buildbot.pixelminers.net/) needs attention again. His Buildbot is a vital tool for Tor core developers to test the Tor development branch on the various BSDs and hardware platforms.

The new 0.9.5 Buildbot software includes a number of noteworthy changes.

First, the new site requires JavaScript enabled to view the site. Also, it is now necessary to make sure that Christian has the hostname and password for each individual Buildbot worker. He can be contacted through the [Tor-BSD](http://lists.nycbug.org/mailman/listinfo/tor-bsd).

There are only two active Buildbot workers at this moment, NYCBUG0 and NYCBUG2. Time to get more Buildbot workers online.

###20170415###

<a id="summit-2017-amsterdam">Tor Summit 2017 in Amsterdam</a> by egypcio

Thank you! Honestly, there is no way to start this post. Thank you all! It was an amazing experience and I not just hope to do it again, and again, but also hope to share with others what I learned during the days I stayed in Amsterdam to attend the Summit.

I also "need" to express huge gratitude to some people here: George, Attila, Moritz, Mark, Isabela, drebs, foz, Kali, Alison, Linus, and Jon. You guys rock!

The idea of just reaching out to the Tor Summit 2017 in Amsterdam for me is more than it looks like. My first steps into the Tor Project as user started quite long ago, but getting closer to its community and contributors/volunteers thought the BSDCon Brazil in 2015 and __TDP__ was the big deal that brought me here. My on boarding at the __TDP__? You can read about it on <a id="vinicius">this</a> blog post. I really had no idea that I would even be attending the Summit; I left Brazil in December 2016 with no guarantee that it would (legaly) be possible to go there. I already had plans to flight to Serbia and stay there for a while waiting some stupid complications with Visa to settle down. My main goal was to get a job somewhere in Europe to work and live abroad - the current political situation running in Brazil since its last presidential elections doesn't need to be discussed here. It feels sad to me talking about it. Let's move on (because life forces us to do it sometimes).

A couple of weeks before the Tor Summit I was getting some codes and patches related to Tor that I had and sending them to my (still not much active) <a href="https://github.com/egypcio">GitHub</a> repositories. Things like the FreeBSD ports for Tor, and the experimental port of the Tor Browser are there now! I also updated a short modified version of a <a href="https://openbsd-br.org/pub/torrc.txt">torrc</a> file and hosted it where people could just get it to start setting up they relays using/reading a more intuitive and reduced version of the huge sample file shipped with Tor - the first draft of this torrc file supported a friend that started the first (public) relay in Paraguay, and it can be easily modified to work as exit node or bridge. There are also information about IPv6 configurations available.

So, a few days before the official date for the Summit I got good news from a company based in Germany regarding one of my job applications. IEI! Guess when I got the Visa? one day before my current one expires :) ...and than I started looking for a way to attend the Summit. I was already working on the week of the Summit, so I couldn't attend to all days and also needed to get a way to Amsterdam only late on Friday 24th. I arrived at the Central Station around 23h, and right after meeting Mark (realitygaps) I went to a little cozy bar with him to try getting in touch with some Tor people. There we met Moritz (<a href="https://torservers.net/">torservers.net</a>) and if it wasn't for me stupid idea of traveling without a jacket I could stay longer enjoying another beer there. heh.

Getting a bike in Amsterdam was, let's say, the obvious choice! That was not my first time there, so after getting some food from the wall I got a bike and rode to Mark's place on the other side of the river. I mentioned to him that I used to get seasick in boat/ferry rides, but luckly nothing bad happened. Nice! At the end, we arrived at his place and chilled a bit. On the next day I needed to get up early and make my way to the Arena. I was part of two nice sessions: <a href="https://trac.torproject.org/projects/tor/wiki/org/meetings/2017Amsterdam/Notes/PluggableTransports">Pluggable Transports</a>, and <a href="https://trac.torproject.org/projects/tor/wiki/org/meetings/2017Amsterdam/Notes/CorpOnionServices">Convincing Big Companies</a>; got a lot from what people said, and also shared some toughts. It was awesome! Later on that day I was also in touch with amazing people getting feedback about the impact Tor plays in many different ways against censourship, how it really supports anonymity, and also how its community really matters to the Globe. I also got closer to people from other projects I used and only knew on the Internet (like <a href="https://ooni.torproject.org">OONI</a>, and others). OlÃ¡ Derechos Digitales, e Primavera Hacker! Sorry I missed the <a href="https://trac.torproject.org/projects/tor/wiki/org/meetings/2017Amsterdam/Notes/GlobalSouth1">first session</a> of the Global South meetings :\

I did not went to any party of late meeting on the Saturday 25th; not just because I was *really* dead tired, but I also wanted to chill an put some ideas, notes, and few lines of code in practice. That night was a regular pizza+code night, but was the best one I ever had. I would like to point you isis' <a href="https://github.com/isisagoralovecruft">GitHub</a> repositories; there are many interesting things you can get and contribute from there. Cool stuff though!

As it also doesn't hurt to remember, if you do have some time to test Tor, try getting the latest code from its <a href="https://gitweb.torproject.org">Git</a> repository and play with it. If you are interested on tests running in different BSD platforms, please check (and try to contribute to) Christian S's <a href="https://buildbot.pixelminers.net">BuildBot</a>!

Well... Sunday 26th! On that day I could reach people from the Global South and went to the <a href="https://trac.torproject.org/projects/tor/wiki/org/meetings/2017Amsterdam/Notes/GlobalSouth2">second session</a>. Great discussions that took us to a little 15 minutes pause, and than the part 2 of the second session could start. There we talked about getting more legal support, more effective ways to deploy relays/bridges/nodes, new approaches to spreach the word of Tor and so on. It looks like we will have a meeting, or even a Summit, on latin America soon. Right? During the session I also compromised myself to write materials in portuguese+spanish (portuÃ±ol? heh) to help more people to get close to Tor and its benefits - I already started doing it, and hope to commit some posts soon after this post I am writting you. We are on IRC, btw! #tor-south@oftc :)

Later that day Moritz introduced me to Nick, and we talked about the FreeBSD port for the Tor Browser. I sure got pretty nifty feedback and incredible ideas to work with. There I decided to split the port into 2 "combined" ports; one for the main browser, and other to take care of the extensions - so if we need just a simple update on the extensions, there will be no need to rebuild the entire browser again. Other ideas, regarding the dedicated user profile, also considered the use of ZFS volumes to run the Tor Browser; sounds a good idea, but we might consider different use cases and host scenarios. I trully need to test it a bit more, and patch some stuff (specially because the Tor Browser port is conflicting with the extended support version of Firefox). Well, at the end, it's gonna be just fine :)

My last hours in Amsterdam were incredible! Again, a big thank you to drebs, foz and kali that got me a sweet and cozy couch! So, at 4h00 I cycled from Kali's to the Central Station, dropped the bike and there I got my train back to Germany and went to work. Arrived just in time; 10h00. Worth it every single second. Thank you everyone! 

If I really did not list your name here, it doesn't mean that you did not help me; it goes for 100% of the people I listened or talked to (on IRC, on any mailing list).

###20170403###

<a id="android-takeover">Android Overtaking Windows and OS Diversity</a> by gman999

The central focus of __TDP__ is operating system diversity by extending BSD Unix into the Tor network on all levels. From *BSD relays to Tor Browser ported to OpenBSD, __TDP__ looks to hinder the capability of one operating system-specific vulnerability to harm the integrity of the entire Tor network.

From a different angle, <a href="http://gs.statcounter.com/press/android-overtakes-windows-for-first-time">Android edging out Windows</a> as the primary client operating system is a notable change.

The user "desktop" no longer necessarily resides at the user's desk. Particularly in less-developed countries and among many working-class people, the main platform for accessing the internet is the phone. Essentially, there is a definition shift in client internet-accessing systems, and Android takes the day with some 37.93% of the market.

This is a far cry from the old <a href="https://cryptome.org/cyberinsecurity.htm">desktop monoculture debate (PDF warning)</a> from the early 2000's. It was only a matter of time before Android took the cake as the role of the phone changed and Android dominates the cheaper end of the phone market globally.

Of course operating system diversity for internet-accessing platforms is good. The question is really is this "good enough"?

Android systems tend to cover a range of versions, some patched to addressed security vulnerabilities, but most are not. There are some interesting new Android forks such as <a href="https://copperhead.co/android/">CopperheadOS</a>, but mass adoption seems unlikely in the forseeable future.

No one gets bumped from their cellular carrier when their phone's Android version faces an end-of-life development status, and many providers aren't particularly interested in devoting resources to maintaining multiple branches of Android, and providing timely patching of known issues.

Replacing a Windows monoculture with a Windows/Android mix might seem like a significant step forward in terms of vulerability mitigation, but merely replacing crud with two cruds can't be considered a victory for the security community.

The interesting angle might really be that the "desktop" is now attached to the end-user one linear step away from science fiction <a href="https://en.wikipedia.org/wiki/Cyborg">Cyborg reality</a>, and that cell phone network providers and device manufacturers are not better than Microsoft at handling security disclosures. In fact, with hundreds of network providers and handset manufacturers now populating the Android market, it's no longer about convincing one software company to address security issues. The goal of reasonably secure client systems seems more of a delusion than even a remote possibility with the decline of the Microsoft monoculture.

Yes, some diversity can be _worse_ for security and network integrity.

###20170401###

<a id="tor-motives">__What Motivates You to Run a Tor Relay?__</a> by gman999

Everyone who contributes to open source projects is driven by some combination of motives. For Tor relay operators, simply taking an occasional glance at the connection statistics should be sufficient.

Only in its second full day of operation, <a href="https://torstatus.rueckgr.at/router_detail.php?FP=577b81cd1fce5b3e7c1bd286774">OpenBSDBBB</a>, the new __TDP__ relay running OpenBSD on a teeny-weeny BeagleBone Black is pushing some 1.31MB of bandwidth. The entry-stats gives us a good sense of many global users assisted:

````
entry-ips us=296,jp=104,de=96,fr=96,es=88,it=72,ru=72,br=48,ar=32,bg=32,ca=32,gb=32,nl=32,pl=32,se=24,ua=24,au=16,gr=16,in=16,mx=16,th=16,ae=8,al=8,am=8,at=8,az=8,ba=8,bb=8,bd=8,be=8,by=8,ch=8,cl=8,cn=8,co=8,cr=8,cy=8,cz=8,dk=8,dz=8,ec=8,eg=8,fi=8,ge=8,hk=8,hu=8,id=8,ie=8,il=8,iq=8,ir=8,is=8,jm=8,ke=8,kh=8,kr=8,kw=8,ky=8,la=8,lk=8,lt=8,lu=8,lv=8,ma=8,md=8,mu=8,my=8,mz=8,no=8,pe=8,ph=8,pr=8,pt=8,py=8,qa=8,re=8,ro=8,rs=8,sa=8,sg=8,si=8,sk=8,sy=8,tn=8,tw=8,uy=8,uz=8,ve=8,vn=8,za=8
````

Simply adding lines like this to a torrc file produces wonderful motivations:

````
EntryStatistics 1
````

Bridge operators can add this to their torrc to get similar statistics:

````
BridgeRecordUsageByCountry 1
````

Yes, a simple point. But all the more powerful when it provides a snapshot into a relay's users as they evade censorship and surveillance in a 24 hour period.

###20170330###

<a id="busy-bbb">__BeagleBone Online and Busy__</a> by gman999

The BeagleBone Black Tor relay is fully operational and according to both <a href="https://torstatus.rueckgr.at/router_detail.php?FP=577b81cd1fce5b3e7c1bd286774758608e50aeeb">one of the Tor Status sites</a> and Tor Atlas, is already pushing about 1 MBps.

It's not up on the <a href="https://buildbot.pixelminers.net/">Buildbot</a> yet, but should be once some technical glitches are resolved on our end.

There is a number of advantages to this and similar relays.

* OpenBSD is unique among relay operating system platforms for a number of reasons, including its usage of <a href="https://www.libressl.org/">LibreSSL</a> as opposed to ubiquitous OpenSSL. At the moment, only some 1.42% of relays are running OpenBSD.

* the BeagleBone is an armv7 platform, which stands outside the normal x86 monoculture. All hardware has its own share of advantages and disadvantages from the security-level. But the x86 monoculture is a scary one and often over-looked when assessing operating system diversity. The BeagleBone is open source hardware, and is not saturated with ugly binary blobs so common on x86.

* finally, the BeagleBone is an Altoids-sized, fanless and silent computer easily accomodated in any data center cabinet, and draws insignificant electricity. And considering the amount of under-utilized bandwidth on so many residential connections in places like the US, the BeagleBone is ideal hardware for Tor bridges for any home. Pop some into your friends' and family's homes, and assist those with censored internet connections around the world.

A final configuration tweak now that the relay seems to be hitting its stride.

OpenBSD is pleasantly stingy in allowing the number of files to be opened per daemon. This restriction works both for security purposes and for a consideration for systems with lesser resources. The tor daemon, to be able to hit its peak bandwidth, likely needs a bump in those values.

There's two quick changes, on that note.

Increase the number of files that can be opened, assuming there is no previously configured /etc/sysctl.conf file:

$ echo "kern.maxfiles=20000" >/etc/sysctl.conf

To enble that change without a reboot:

$ sysctl kern.maxfiles=20000

Next allow the tor daemon to increase its own openfiles limit, edit the /etc/login.conf file and add the following:

````
tor:\  
    :openfiles-max=8192:\  
    :tc=daemon:  
````

While testing node configuration changes on a (mostly) randomized anonymity network is hard to measure, removing those limits can remove some local hindrances.

###20170328###

<a id="obsd-bbb">__Tor Relay on a BeagleBone Black Running OpenBSD -current__</a> by gman999

For anyone who hasn't gotten the news, x86 hardware no longer reigns supreme in server land. For years other architectures, namely ARM, are increasingly moving beyond esoteric or hidden purposes. ARM isn't just for your cell phone anymore.

On that note, __TDP__ is set up a Tor relay on a <a href="https://beagleboard.org/black">BeagleBone Black</a> running OpenBSD. The OpenBSD <a href="https://www.openbsd.org/armv7.html">armv7 platform</a> covers some of the more popular armv7 hardware, including the <a href="http://www.wandboard.org/index.php/details">Wandaboard</a>, <a href="http://cubieboard.org/">Cubieboard</a> and <a href="http://www.banana-pi.org/">Banana Pi</a>, not to mention other BeagleBones and the <a href="https://beagleboard.org/beagleboard-xm">BeagleBoard</a>.

The dmesg for the relay is <a href="http://dmesgd.nycbug.org/index.cgi?do=view&id=3140">on NYC*BUG's dmesgd</a>. The device joined the Tor network today, and will be joining the <a href="https://buildbot.pixelminers.net/">Unofficial BSD Buildbot</a> maintained by Christian S. soon.

OpenBSDBBB is listed on <a href="https://torstatus.rueckgr.at/router_detail.php?FP=577b81cd1fce5b3e7c1bd286774758608e50aeeb">Tor Status</a> and also on <a href=https://atlas.torproject.org/#details/577B81CD1FCE5B3E7C1BD286774758608E50AEEB">on the Tor Project's Atlas</a>.

The stable release of OpenBSD is 6.0, but this relay is running -current. Both net/tor and devel/py-buildslave are available as OpenBSD armv7 packages, making the setup easy enough.

The RelayBandwidthRate is set to 5000 KBytes and bursting to 6000 KBytes, and it will be worthwhile seeing if that rate is attainable.

A quick note on configuration.  There are four partitions, as the output of df(1) illustrates:

````
Filesystem     Size    Used   Avail  Capacity   Mounted on  
/dev/sd1a      491M   42.9M    423M        9%      /  
/dev/sd1f      1.4G   10.2M    1.3G        1%      /home  
/dev/sd1d      1.5G    521M    907M       36%      /usr  
/dev/sd1e      192M   77.7M    105M       43%      /usr/local  
mfs:54396     48.4M    4.0K   45.9M        0%      /tmp  
````

/tmp is running off RAM with mfs.

The ports tree is mounted on a 16G microSD card. It will enable us to build and test new ports on armv7. __TDP__ is looking at porting other relevant PETs applications such as <a href="https://onionshare.org/">OnionShare</a> and finally moving <a href="https://github.com/jasperla/openbsd-wip/tree/master/net/obfsproxy">obfsproxy</a> into the official ports.

Running on -current might seem counter-intuitive, as it is the OpenBSD development branch, and may contain bugs and breaks. But like the tor-alpha branch, OpenBSD's -current gets a lot of attention, and also includes the latest stable Tor port which is tor-0.2.9.9p0. While -current snapshots can be released multiple times a day on occasion, updating on a weekly basis is usually sufficient.


###20170324###

<a id="calling-bsd">__Calling All BSD Firms__</a> by gman999

A lot of major firms use BSDs. You just aren't probably aware of them.

From WhatsApp to Juniper and Netflix, and blue-chip storage vendors like NetApp and Isilon, the BSDs are quietly omnipresent.

Some use the BSDs in their infrastructure, others use BSD code in their products. The liberal BSD license places negligible restrictions on the code usage, but doesn't compel firms to publicize it.

The BSD license, whether the two- or three-clause versions, are catered for developers to share code, in that they are clear and succinct, and don't require a lawyer to interpret them. Of course if you ask a lawyer, they will try to convince you legal counsel is necessary for reading a menu at a restaurant.

Many of the firms contribute code back into the BSD projects, a number also provide infrastructure, while others donate to projects such as <a href="http://www.openbsdfoundation.org/contributors.html">OpenBSD</a> and <a href="https://www.freebsdfoundation.org/donors/">FreeBSD</a>.

There's always room for a little more.

__TDP__ is going to be putting out a public call in the near future, asking BSD-employing firms to run a Tor relay on their preferred BSD. These entities already maintains the infrastructure, staff and know-how and can easily work in another bare-metal server into their operation. 

In December 2014, the Mozilla Foundation began <a href="http://www.pcworld.com/article/2877592/mozilla-puts-old-hardware-to-new-use-runs-tor-relays.html">running 12 Tor relays</a>. __TDP__ believes this is an effort that needs to be replicated by BSD-using firms and entities. Hosting relays as corporate infrastructure provides legitimacy to online free speech.

BSD firms running Tor relays benefits the BSDs, the privacy enhancing community and the firms themselves, and our open letter should clearly make that case.

###20170317###

<a id="tsummit-amsterdam">__March in Amsterdam__</a> by gman999

For a variety of reasons, only one of us will be attending the upcoming <a href="https://trac.torproject.org/projects/tor/wiki/org/meetings/2017Amsterdam">Tor Summit in Amsterdam</a>. If you are attending, please make sure you speak to Vinicius.

Huge thanks to <a href="https://www.torservers.net/">torservers.net</a> for the last minute support for him. Enormously appreciated.

###20170227###

<a id="current-relays">__Running OpenBSD -current for Tor Relays?__</a> by gman999

The question of which branch or flavor of OpenBSD to use for a Tor relay is a frequent point of mention.

OpenBSD maintains three [flavors](https://www.openbsd.org/faq/faq5.html#Flavors):

* -release which comes out every six months as sure as the sun rises, if not earlier on occasion

* -stable which includes the addition of necessary patches

* and finally, -current, the bleeding edge of OpenBSD development, which updates regularly and sometimes _very_ frequently

The logical notion is that -stable or even -release should be the Tor relay platorm choice. It does seem to be the most common recommendation.

Yet there are a number of things to consider, and we tend to favor -current as the best option in most use-cases for any OpenBSD box.

First, what is -current in OpenBSD is not some wildly unusable system. -current is the platform for OpenBSD development, in that it is the flavor on which OpenBSD developers actually work. Not a few production servers run on -current, and most significant problems are quickly resolved.

The other issue to consider is that OpenBSD's ports development takes place on -current. Therefore the most current OpenBSD ports are found in -current. net/tor is at version 0.2.9.9 with a single revision, while -stable is still at Tor 0.2.7.6 with three revisions.

And no, for the inquisitive, OpenBSD does not support alpha or beta software in its ports tree, which excludes the Tor development branch.

Updating -stable isn't difficult, which ever [updating routes](https://www.openbsd.org/faq/faq10.html#Patches) chosen. But following -current with the regular snapshots is equally simple. [This guide from Peter Hansteen](https://bsdly.blogspot.com/2012/07/keeping-your-openbsd-system-in-trim.html) is dated, but gives the gist of the procedure.

Just because -current can update as frequently as a few times a day at times, doesn't mean the Tor relay operator has to update the system each time. If one can keep a -current relay updated weekly, it should be fine.

The one other thing to note is that physical or serial console (or similar) access is also necessary for updating -current, as one has to boot off the bsd.rd kernel.

###20161217###

<a id="vinicius">__Welcome Aboard, Vinicius__</a> by gman999

Two of us launched __TDP__ in March 2015. The accomplishments are substantial, and the impact is significant. __TDP__ did more than raise the PETs flag in BSD land, it sparked a number of related projects and efforts.

One important player in the broad effort has been Vincius Zavam, a young BSD hacker in Brazil. Introduced to PETs and Tor in particular as he was an organizer of BSDCon Brasil in 2015, Vincius wasted no time engaging on multiple levels.

He not only started running a number of Tor relays on several BSDs, he also assisted others in Brazil. Without any external assistance, he began porting Tor Browser to FreeBSD, an enormously important endeavor. And most recently, he did a presentation on Tor with a focus on the BSDs.

He is not just full of energy and ingenuity, he is also a pleasure to work with.  His locale of Brazil is another advantage which he has utilized to the fullest. He has provided patches to the FreeBSD security/tor port several times and is active on the [Tor-BSD mailing list](http://lists.nycbug.org/mailman/listinfo/tor-bsd).

Like the other __TDP__ members, he might favor one BSD over another for different tasks, but "BSD agnosticism" is his ideology. Although this [tweet](https://twitter.com/HenningBrauer/status/741485723778453504) might belay his deepest allegiance.

Welcome aboard, Vinicius. Our efforts are ongoing without monetary compensation. There is no pot of gold awaiting us, but if we can continue to enhance Tor and the PETs scene in general, the satisfaction is priceless.

###20161113###

<a id="inthetree">__In The Tree__</a> by attila

It was a long haul but the Tor Browser ports were finally [accepted into the OpenBSD ports tree today](https://marc.info/?l=openbsd-ports-cvs&m=147907177720815&w=2%29).

A huge thanks to `landry@`, `semarie@`, `danj@`, `mmcc@` and all the
other `ports@` people who made this possible with their critiques,
observations, pointers, suggestions and just plain work.

Now we've got to get cracking on [Pluggable Transports](https://www.torproject.org/docs/pluggable-transports.html.en).  We won't stop not stopping.

###20161025###

<a id="morebananas">__More Bananas__</a> by gman999

The easiest way to convey the problems with monocultures in technology is to point to a stark monoculture common to many: bananas.

The [Cavendish banana](https://en.wikipedia.org/wiki/Cavendish_banana) is a non-reproducing variant that dominates global production, and is most likely the one encountered. The Guardian published an article entitled ["The banana as we know it is in imminet danger"](https://www.theguardian.com/commentisfree/2016/oct/25/banana-farming-danger-cavendish-crop-genetics) regarding efforts to diversify banana types.


###20161017###

<a id="signifysanity">__signify(1) Sanity__</a> by gman999

[signify](http://man.openbsd.org/signify)(1) was released in 2014 as a simple means of signing and verifying files on OpenBSD.

What does signify have to do with __TDP__?

The current and standard practice for verifying the integrity of digial signatures on software is to use [GnuPG](https://www.gnupg.org/). The [procedure](https://www.torproject.org/docs/verifying-signatures.html.en) is tedious, and likely ignored by most TB users.

signify is small and sticks to the Unix approach of doing one function.

###20161005###

<a id="test605">__Test Tor Browser 6.0.5 for OpenBSD__</a> by gman999

The release of TB 6.0.5 has been worked and reworked, and submitted to the [OpenBSD ports@ list](https://marc.info/?l=openbsd-ports&m=147552847908620&w=2).

If you're an OpenBSD user running amd64 snapshots, and you want more operating system on the Tor network, you should be testing it. As always, consider this release without warranties and a serious infraction to your online anonymity!

The amd64 packages are on the [NYC*BUG mirror](http://mirrors.nycbug.org/pub/snapshots/packages/amd64/). The i386 packages should be up in the next day or so.

Feedback, comments, gripes not just welcomed, but demanded.

###20161004###

<a id="torblog0">__Replying to Tor Blog Comments__</a> by gman999 and attila

The last Tor blog post on [Tor 0.2.8.8 is released, with important fixes](https://blog.torproject.org/blog/tor-0288-released-important-fixes) prompted a flurry of comments regarding the BSDs and the Tor Project.

An important part of the Tor 0.2.8.8 release was a fix for bug #[20103](https://bugs.torproject.org/20103) discovered by __TDP__. Tor on OpenBSD was crashing with OpenBSD relays running 0.2.8.7 as the first hop. Gman999 first encountered the crashes while testing new TBB packages. Attila did the heavy lifting and reported it to the TP's Trac.

OpenBSD is an ideal bug-finding platform as it follows the classic Unix approach in which a daemon dies loudly rather than quietly hiding its behavior. The bug likely affects other operating systems, so another +1 for operating system diversity.

The comments section opened a noisy series of posts about Tor and the BSDs, some of which we believe are inaccurate and demand responses. Snips from the posted comments are below, with our replies:

_Since nickm mentioned OpenBSD users have been more seriously affected, we'd like to take this opportunity to ask why The Tor Project has no plans at all to release Tor Browser Bundle for *BSD operating systems, OpenBSD in particular._

There are lots of things the TP should be planning, and as non-Tor Project developers, we jumped on the opportunity to port Tor Browser to OpenBSD back in March 2015. We are in regular contact with the TP, and have been encouraged and assisted by a number of TP core people, including Moritz and Roger. Gman999's recent attendance at the [Seattle Tor Summit](https://trac.torproject.org/projects/tor/wiki/org/meetings/2016SummerMeeting) illustrated the great attention __TDP__ is getting; he was personally flattered by the recognition.

The question for the anonymous poster is "what are you doing?"  TP is an open source project. In BSD Land no one listens to gripes about software if the complainer doesn't at least begin resolving the issue, like submitting debugging information, providing a patch, etc. It's a principle that all open source projects should adopt. The poster in question should at least be testing our TB releases on OpenBSD. [Fork the code](https://github.com/login?return_to=%2Ftorbsd%2Fopenbsd-ports), [submit a useful issue](https://github.com/torbsd/openbsd-ports/issues), and so on, but complaining anonymously on a blog about what _others_ should do is pointless at best.

_It appears then that The Tor Project is not keen at all to support users of *BSD operating systems. Therein lies the danger. Again the following is a quote from The Tor BSD Diversity Project..._

This comment follows up from noting the lack of source tarballs from the TP, which is the preference for porting Tor Browser and other software. Oddly, the poster quotes the __TDP__ www site, yet in the previous comments says the TP "has no plans at all to release Tor Browser Bundle for *BSD operating systems."

Nick M, Roger D, and others actively use the [BSD Buildbot](https://buildbot.pixelminers.net/) initiated by Christian S., and we have corresponded about it. Roger made multiple references to __TDP__ in his postings on various Tor mailing lists. We hardly feel there is some conspiracy against the BSDs from Tor core developers. Rather, there is a genuine recognition of the __TDP__ endeavor.

More generally: yes, the recent vulnerability from [RFC5961](https://tools.ietf.org/html/rfc5961) TCP implementations on Linux makes yet another strong case for operating system diversity, and it is neither the beginning nor the end of screams for diversity.

And it's not just operating system diversity. More relays need to be running on architectures other than x86. PPC and ARMv7 are certainly worthwhile platforms, and the near-future should see production-quality support of 64-bit ARM hardware (aarch64) on [FreeBSD](https://www.freebsd.org/platforms/arm.html).

_Moroever OpenBSD users prefer to download Tor Browser Bundle directly from The Tor Project as the latter is the official software publisher of Tor._

We doubt too many open source operating system users would prefer to directly download from any third party for their packages as opposed to using software packaged specifically built for their operating system in their respective ports or package system.

In the case of OpenBSD, this is doubly true. If software gets into OpenBSD's ports tree, a small but real amount of review is conducted at minimum. Third-party ports in the tree aren't fully audited, but as one can see from the [ports@ mailing list](https://marc.info/?l=openbsd-ports&r=1&w=2), ugly unreviewed ports don't easily enter. We have been developing and tweaking TB on OpenBSD for a long time. Maybe if we could attend to the porting effort with more time and resources, TB would already be in the OpenBSD ports tree, but regardless, look through the comprehensive attention TB has received. Moreover, development on OpenBSD only happens on the -current branch, which changes rapidly and frequently.

There is another issue that gets glossed over when people propose that the Tor Project should distribute OpenBSD TBB packages: who signs them? It is not that common in the OpenBSD community for users to have umpteen keys from umpteen software repositories installed in `/etc/signify` and to mix packages installed from various sources. Users generally install packages built from ports by the OpenBSD team, signed with the keys distributed with the operating system (one notable exception: [M:Tier](https://stable.mtier.org/), which is run by OpenBSD developers). We are therefore hesitant to suggest that the Tor Project start distributing packages, since they would then have to sign them and instruct their users to add the appropriate keys to their system. The better way, in our opinion, is for the port to be accepted into the official ports tree and for binary packages to be made available in the usual way.

_If I had seen all this sooner, I wonder if it would have been worthwhile to have suggested tackling *BSD Tor packages be a hack topic at the recent Tor Project Hack Day in Seattle this weekend? Perhaps there'll be a future chance?_

It wasn't an explcit topic in Seattle, but there was a fruitful discussion about diversity, and not just operating system diversity. There were also a number of informal discussions on the topic, but the ball is really in __TDP's__ court right now. __TDP__ will need more TP involvement in the near future.

Regarding a version of TAILS on a BSD: _It will never happen as *BSD kernels are notorious for being behind in their support for the latest Intel CPUs._

This is really just [FUD](https://en.wikipedia.org/wiki/Fear,_uncertainty_and_doubt): the vast majority of hardware is well-supported by the BSDs. OpenBSD is refreshingly intransigent about signing non-disclosure agreements, which can mean lack of support for some hardware, but they do distribute firmware for some wireless cards and other devices. Without that stance, a lot of open source development would never occur. "Open source operating system" would like mean a collection of mysterious bloated binaries with a "Certified Open Source" sticker slapped on the product.

Producing a TAILS-like alternative based on OpenBSD has been a goal of __TDP__ since its inception. We're still on the first step: porting TBB to OpenBSD.

And again regarding the RFC5961 issue in Linux: _the argument should just be about having diverse kernels, because saying a known bug "proves" one of them to be inherently inferior is actually a temporary fact. In using a diversity argument and avoiding a comparative argument, I'd expect more support for *BSDs will be attracted from thinking people._

We aren't focused on 'superiority' although most people who choose an operating system logically consider it superior on some level or another.

It is generally true that each of the BSDs have different roadmaps for implementing standards than Linux. In many cases, the BSDs differ among themselves, despite a shared origin and lots of overlap since.

_I don't understand why you brought Apple into the discussion._

and,

_I think the OP refers to the public secret that Apple pilfered one of the *BSDs and adapted it into iOS, because the generous nature of the BSD licence allows it, hence why "BSD things are more better for closed source" as the OP puts it. It's well known that iOS is a Unix clone, at least._

In a sense the BSD license throws up a white flag in the face of corporate usage of code. It's a pointless battle, and their side always has more resources and lawyers. The point of the BSD license is to protect the developer, and to let code flow around like it should without restrictions; the simplicity of BSD-derived licenses is impossible to deny. We view licenses like the GPL (esp. post-v2) as generators of billable hours for corporate lawyers, something we'd care to avoid.

Apple does use BSD code, as do many other firms. "Pilfered" hardly describes the relationship. And yes, that lack of restrictiveness does mean BSD code is used but not loudly. Having a license that developers don't need a lawyer to read offsets the loss, and BSD-licensed code's influence is deep.

That's it for now.

###20160906###

<a id="current0">__Where Things Stand__</a> by gman999

A brief list of where things stand with __TDP__:

* Tor Browser 6.0.4 is in the testing phase, but looking good. Builds for i386 should start today.

* One of us will be attending the [Tor Summit](https://trac.torproject.org/projects/tor/wiki/org/meetings/2016SummerMeeting). Many invites, but it's usually at a bad time for us.

* The [BSD Buildbot](https://buildbot.pixelminers.net) is more populated since our last call-to-enlist, but operators need to make sure the buildslave software is up and running.

* [Quick-and-Dirty Static Reports](dirty-stats.html) is being updated regularly, but still manually and not consistently. Note that there has been a small but noticeable dip in the *BSD relays, and the number of countries without relays hovers over 85 recently.

That's the status right now. Updates should be happening in the near future.


###20160818###

<a id="buildbot">__The Buildbot Needs BSD Relays__</a> by gman999

One of the small yet important projects spawning from this Tor-BSD meme is Christian S.'s [BSD Buildbot](https://buildbot.pixelminers.net). Essentially it's a tool for development builds of Tor for the Tor Project, with volunteers enlisting their BSD relays.

Recently its relevance was reinforced due to some libevent issues with OpenBSD and Tor. The OpenBSD base includes libevent, and libevent2 is a dependency port (LIB_DEPENDS) for the Tor port. Tor Project Trac tickets include [19902](https://trac.torproject.org/projects/tor/ticket/19902) and [19904](https://trac.torproject.org/projects/tor/ticket/19904).

To enlist a BSD relay in the buildbot:

* Make sure that devel/git and devel/autotools is installed on the functioning Tor relay, the latter of which includes devel/autoconf and devel/automake as dependencies.

* Create a non-privileged user for the buildbot, without any particular group outside of its own.

* On FreeBSD and DragonFly BSD, install devel/buildbot-slave.  On NetBSD, install devel/py27-buildbot-slave. On OpenBSD and Bitrig install devel/py-buildslave.

* As the non-privileged user, run this command:

```
$ buildslave create-slave slave buildbot.pixelminers.net:9989 <buildername> <password>
```

where <buildername> is something you choose, and <password> is your key for the particular slave.

* In the new user's directory, a slave/ directory will be created. Edit slave/info to provide a description, like the particular BSD, the architecture and maybe BSD release version, plus edit slave/admin to provide an (obscured) contact email for the buildbot slave.

* Finally, run this command to join the buildbot, from the new user's directory:

```
$ buildslave start slave/
```

For OpenBSD buildbot relays, /etc/profile needs to list the installed versions of autoconf and automake, as per [this email](http://lists.nycbug.org/pipermail/tor-bsd/2015-March/000270.html) to the [Tor-BSD mailing list](http://lists.nycbug.org/mailman/listinfo/tor-bsd).

```
export AUTOCONF_VERSION="2.69"
export AUTOMAKE_VERSION="1.14"
```

Assuming everything is configured correctly, the buildbot slave should appear on [https://buildbot.pixelminers.net/buildslaves](https://buildbot.pixelminers.net/buildslaves), and the log in slave/twistd.log should provide results.

Also: yes, we think the terminology of buildbot "slave" and "master" are inappropriate, and we only use them since they are the actually commands and lingo. The terms are not even descriptively useful to someone new to the concept of a continuous integration system.


###20160629###

<a id="quiet-progress">__So Much Quiet Progress__</a> by gman999

This blog remained silent over the past several months despite a flurry of very significant __TDP__ activities.

The accomplishments are not reducible to a single blog entry, but here are summaries of the more interesting:

* There was continued development and the release of several Tor Browser versions.  Packages for 6.0 and 6.0.2 (the current version) were produced. The OpenBSD packages for both amd64 and i386 are available at http://mirror.nycbug.org/pub/snapshots/packages/{amd64,i386}. With feedback from the OpenBSD ports@ mailing list, another version of TB 6.0.2 is in the works.

* We held a presentation at BSDCan 2016 in Ottawa, Canada in June. The presentation, entited [Beyond Monocultures](https://www.bsdcan.org/2016/schedule/events/712.en.html) is hosted on [YouTube](https://www.youtube.com/watch?v=KeQWET79t_Y). The meeting was engaging and filled with discussion, and there were some exciting possibilities produced by the meeting, including a code audit offered by a well-respected information security firm, plus some preliminary plans to port our TB code to [HardenedBSD](https://hardendedbsd.org).

* Also as a consequence of BSDCan, Brian Conway of [resflash](https://stable.rcesoftware.com/resflash/), a flash-based OpenBSD build system began producing [images with a Tor relay pre-configured](https://stable.rcesoftware.com/pub/resflash/tor/). We have been exploring such a system for Tor bridges, with either resflash or [flashrd](http://www.nmedia.net/flashrd/), but are glad to see Brian took the initiative.

We would have replied to the RFP for [EuroBSDCon 2016 in Belgrade, Serbia](https://2016.eurobsdcon.org/) but the __TDP__ schedule doesn't permit.


###20160331###


<a id="tb-snaps-status2">__TB 5.5 on the Current Snapshots__</a> by gman999

As of last week's OpenBSD's i386 and amd64 snapshots, TB 5.5 is no longer working.

We are looking to start building the Tor Project's most recent TB soon. Spending time on TB 5.5 is fruitless when 5.5.4 is the current TP release.

The OpenBSD project just announced the release 5.9 a month early, which I personally don't remember ever happening. The project usually follows a strict six-month release cycle. We are going to focus on getting TB into the next stable release of OpenBSD, which would be 6.0, planned for November 1. Of course we hope to have TB in the snapshots ports way before that date.

Meanwhile, the [Quick-and-Dirty Static Reports](dirty-stats.html) are still updated regularly, albeit manually still.

Additionally, a lot of time has been recently committed to [Porting Targets for PETs](porting-pets.html). It's a tough battle. You spend time getting the basic aspects of the Makefile operational, you figure the peculiarities of how a port is compiled, the array of licenses, and so on, but then you realized a host of unported Python libraries build or run dependencies. Jump out of vi(1) and into the rabbit hole.

A final note on porting PETs-related software, mostly directed at developers. Write your software to be portable, please. Creating a Python module port or package may be a simplistic example of portability, but a negative example is doing builds specific by each OS and Linux distribution. Don't give me setup_debian.py, or a setup file that relies on a handful of operating system choices. Give me an install script that can recognize the global variables and avoid hard-coded paths, that doesn't need one [shell](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) or another. What does [bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash) provide that the install script requires? I mean, really? For the vast majority, a 1995 Bourne shell would be more than sufficient.

If you only want, say, Debian users, for your PETs application, you are definitely not looking at the basic diversity arguments so apparent to most people. You are also cutting off more potential downstream developers that could be making your life easier. Treated nicely, downstream developers can make you look significantly smarter than you might be. There are arguments whether the "many eyeballs" make open source software more secure when most people don't read code, but there's no question that more downstream developers hacking on your code really does. 

###20160320###

<a id="portpets-up">__Porting PETs Updates__</a> by gman999

[Porting Targets for PETs](porting-pets.html) is meant as a hit list of privacy enhanncing related ports that may or may not be in the main BSD port/package systems. As we make clear on the page, some should be considered for entry into BSD ports systems, while others may not be good candidates for a variety of reasons.

As we (manually) update the project page, a few points come to our attention:

* [pdf-redact-tools](https://firstlook.org/code/project/pdf-redact-tools/) is now in NetBSD's cross-platform ports system, pkgsrc.

* [torsocks](https://gitweb.torproject.org/torsocks.git/) isn't in the pkgsrc tree, which comes as a surprise (and correction).

* [onioncat](https://www.cypherpunk.at/onioncat_trac/) was added to the list, and it's also not in the pkgsrc tree. The OpenBSD version is outdated.

* Since our last update, we're happy to see that [ricochet](https://ricochet.im/) is now in DragonFly BSD's DPorts system.

* [obfsproxy](https://gitweb.torproject.org/pluggable-transports/obfsproxy.git) is not in the OpenBSD ports tree, but it is in the GitHub [work-in-progress ports](https://github.com/jasperla/openbsd-wip). obfsproxy also isn't in the pkgsrc tree. Pluggable transports are worthwhile ports to consider, since the censorers are fond of blocking Tor traffic.

* We are excited there's a pkgsrc [attempt to port Tor Browser](http://ftp.netbsd.org/pub/pkgsrc/current/pkgsrc/security/tor-browser/README.html). We have reached out to the developer directly and indirectly several times, but have not heard back unfortunately. Our __TDP__ fellow-travellers tried to reach out to the developer, ryoon AT netbsd.org, at [AsiaBSDCon](https://2016.asiabsdcon.org/] last week, but were unable to find him. We do hope to hear back from him at some point to synchronize our efforts. We are sure there's a lot to learn from each others' experiences.

* Besides torsocks, pkgsrc doesn't contain a [stem](https://stem.torproject.org/) port which is vital for tools like [arm](#pkg-arm) and for any tool that talks to the Tor control port.

Don't hesitate to ping us if you're interested in addressing anyone of the above ports. We can direct you to the appropriate mailing list or developers, or dump any Makefiles we may have already created.

At this point, __TDP__ isn't focusing on porting these applications, but unofficially we have begun to toy with some of them.

###20160310###

<a id="tb-snaps-status1">__STATUS: TB 5.5 and i386/amd64 Snapshots__</a> by gman999

Tor Browser 5.5 is still working with the newest OpenBSD snapshots, which is #1638 for [i386](http://www.openbsd.org/i386.html) and #1918 for [amd64](http://www.openbsd.org/amd64.html).

###20160303###

<a id="tb-snaps-status0">__STATUS: TB 5.5 and i386/amd64 Snapshots__</a> by gman999

TB 5.5 is working fine with the newest OpenBSD snapshots:

* amd64 is #1890

* i386 is #1618

###20160301###

<a id="bsdcan0">__TDP at BSDCan 2016__</a> by gman999

Our presentation entited ["Beyond Monocultures"](https://www.bsdcan.org/2016/list-of-talks.txt) was accepted for [BSDCan 2016](https://www.bsdcan.org/2016/) on June 10-11 in Ottawa, Canada.

We feel very fortunate, since there were a lot of submissions for what is the premier BSD event in the western hemisphere. BSDCan has grown substantially since 2004, with hundreds of attendees participating.

Last year we conducted a [birds-of-a-feather session](https://www.bsdcan.org/2015/schedule/track/BOF/624.en.html) which attracted around 50 people.

This year, we should hopefully have some good news to publicize about __TDP__. In the meantime, the actual presentation should start coming together in the next month or so. In all honesty, it's hard to determine what the focus of the presentation should be. We only have a general idea of where we'll be by mid-June.

At this point, the introductory part should start with "Why Tor Sucks" plagiarizing Henning Brauer's [OpenBSD Sucks](https://quigon.bsws.de/papers/2015/asiabsdcon/index.html) concept. This is a backhand approach to arguing why Tor matters. The reality is that a lot of people in the BSD community continue to see Tor as ineffective or insecure, so the case for Tor being full of problems yet the very best thing available needs to be made.

It's not that BSD people overwhelmingly aren't concerned with security and privacy. At the bar last at BSDCan last year, surrounded by some of the best known BSD veterans from the 1970's, I listened how they dealt with surveillance. One file system hacker with decades of experience mentioned how he always changed his MAC address when using public wireless.

But there's also a sense that Tor is too easily broken, such as with timing attacks from a global passive adversary. Or that if enough Tor relays are run by an adversary to anonymity, the network is useless. All are valid points and certainly need further attention. The heavy brains at the bar that night could infuse some assistance.

###20160223###

<a id="tb55snaps1">__TB 5.5 and More New Snapshots__</a> by gman999

Yesterday the OpenBSD snapshots updated to #1881 for amd64 and #1609 for i386. TB is working fine on both.

Meanwhile, the TB packages were updated. First we implemented a meta TB package, as per landry@'s comments. Note that the start-tor-browser script was also deprecated recently. All the sloppy setup gook was replaced by neater Firefox hacks.

Installing TB from the mirror is simple:

    $ doas env PKG_PATH=http://mirrors.nycbug.org/pub/snapshots/packages/amd64/ pkg_add tbb

For i386 installs, replace /amd64/ with /i386/.

__Be aware that that we are still tinkering with TB 5.5 which has some significant vulnerabilities that could disclose a user's identity. TB 5.5.2 is in the pipeline.__

A question for TB testers out there: does a Tor Browser icon appear on the desktop after TB installs?

According to the general standards on window manager desktops, it should as the installer places /usr/local/share/applications/tor-browser.desktop into ~/.local/share/applications. However, on XFCE it doesn't appear, and the file needs to be placed in ~/Desktop. How about KDE and GNOME users out there? Let us know.

We imagine that most users following -current are probably running cwm.

###20160221###

<a id="tb55snaps">__TB 5.5 and New Snapshots__</a> by gman999

Just a short note: Tor Browser for OpenBSD 5.5 is still working with the most recent OpenBSD snapshots (#1880 on amd64 and #1608 on i386).

We always use the most recent snapshots on our boxes, and usually update the TB packages when TB needs updating due to relevant snapshot changes. Since our build process significantly simplified with TB 5.5, primarily due to [landry@'s input](https://marc.info/?l=openbsd-ports&m=145581927415588&w=2/), updates to both amd64 and i386 builds became relatively painless.

And it should only get better in the near-future releases.

###20160216###

<a id="next-phase">__Onto the Next Phase__</a> by gman999

The progress we've made over the past five days was exhausting, yet exciting.

Some very significant steps were made with Tor Browser.  A revised 5.5 release does not contain the start-tor-browser script any longer; all the necessary setup steps are now done with Javascript, including the profile setup. The Firefox add-ons are now dumped into the profile as files, such as https-everywhere@eff.org.xpi, instead of being extracted into directories. Additionally, we are now building an i386 version of TB.

We are aware that [TB 5.5.2](https://blog.torproject.org/blog/tor-browser-552-released/) was released by the Tor Project this past Friday, a mere hour after we announced our 5.5 release. TB 5.5.2 includes some important security changes coming from the Mozilla upstream, although much can be mitigated by moving the security slider to high. And [TB 5.5.1](https://blog.torproject.org/blog/tor-browser-551-released/) was also released before our TB 5.5, but the changes were significant. Nevertheless, the last five days of constant hacking and testing on TB makes future releases less painful and more smooth.

Finally, for those doing TB testing, we have a brief guide to what to test in a [Testing Tor Browser](testing-tb.html) piece. The past week has already changed some of the steps, and we look to expand and formalize this document so it becomes a useful tool.

It's almost a year since our first commits to GitHub, and it's been a long and sometimes painful learning experience, but we think we're now in a great spot.

###20160205###

<a id="tb-55-tagged">__Tor Browser Ports for 5.5 Tagged__</a> by attila

I just merged 5.5 onto master and [tagged it](https://github.com/torbsd/openbsd-ports/releases/tag/tbb-5.5-sans-pt/).  This release was much easier after the work on 5.0.6, which has us using [mozilla.port.mk](http://cvsweb.openbsd.org/cgi-bin/cvsweb/~checkout~/ports/www/mozilla/mozilla.port.mk?rev=1.84&content-type=text/plain) instead of a bunch of cut-and-paste adapted from same.  This makes things a lot easier moving forward.  So far 5.5 on amd64 is looking good.

<a id="tb-releases">__Tor Browser Releases__</a> by gman999

It's been a while since our last Tor Browser releases, but it's not because we haven't been busy. Smaller projects like [Quick and Dirty Statistics](dirty-stats.html) and [Porting PETs](porting-pets.html) have continued to progress, and other stuff that attila can elaborate on in a future blog post.

While worked dragged on with the 5.0.6 Tor Browser release, we managed to not only finish that [release](http://mirrors.nycbug.org/pub/snapshots/packages/amd64/archive/tb-5.0.6.tgz), but also finish up the [5.5 release](http://mirrors.nycbug.org/pub/snapshots/packages/amd64/README-55.txt). That puts us parallel with the current Tor Project release.

We are now archiving previous versions of TB as tgz file in an [an archive directory](http://mirrors.nycbug.org/pub/snapshots/packages/amd64/archive/). Version 5.0.6, which barely saw the light of day, is there.

We are excited by the releases, and look forward to feedback from the testers out there.

One quick note about Tor Browser 5.5 on OpenBSD 5.8 stable. We have repeated ad nauseum, but it's worth reiterating again: OpenBSD development happens on -current, a.k.a., snapshots, which ultimately turn into the next stable release every six months.

Developing Tor Browser for OpenBSD stable means dealing with multiple levels of differences between stable and current, from the package versions to libraries in the base operating system. In *BSD land, userland applications and the base OS are meant to play nice together by default.

In the case of trying to run TB 5.5 on OpenBSD 5.8 stable, there are two package incongruities. First, 5.8-stable's Tor version is 0.2.6.10p1, while the current version is 0.2.7.6. Second, the nspr stable version is 4.10.8, while the current version is 4.11. Both current versions of the packages rely on operating system changes not present in stable. There is a ports freeze approaching for the May 1 OpenBSD 5.9 stable release, and we may use that as an opportunity to produce a stable version of the Tor Browser. Stay tuned.

###20160118###

<a id="torinabox">__Tor-in-a-Box__</a> by gman999

If someone reasonably technical bumps into Tor for the first time, eight or nine seconds later, they arrive at the concept of some type of Tor device that automagically routes all local network traffic through the Tor network.

Great idea. The fact that so many imagine such a concept certainly means something.

All too often, unfortunately, the implementation is wrong. Dead wrong.

In the early 1990's, a desktop's traffic to the public internet was simple. There might be some HTTP from a web browser, a dash of UDP for DNS lookups and maybe some POPing to a remote email server. All was relatively quiet.

Over the past two decades, the wall between the internet and the desktops evaporated. Why is Windows 10 a free upgrade? Likely because a "free" operating system is well-compensated by full control of the desktop environment. And that means a tcpdump(8) from 1994 bears no resemblance to the ugly spew of 2015.

After those initial eight or nine seconds, going back to the basics of design should be the next reaction. Stop trying to make tools that do everything half-way. Too often an all-in-one device that tries to solve multiple problems displays contradictions between those functions. Thus, the core Unix principle that is considered dated by many, yet justifies itself with each new "wonder box" incarnation: one tool for one function.

That is not an argument against innovation, products or progress on any level. The point is the moment an attempt is made to cast a wide net into a complex sea, the net is shredded. The net's target is not a school of sardines, but sardines, sharks, with rusted earth-moving equipment, yellow school buses and maybe a piece of space hardware or two.

More on this theme later, but the resilience of the classic Unix themes rises from the grave daily in an age of all-in-one products or services that tries to do everything, but succeeds at doing some things poorly and others dead-wrong.


###20160102###

<a id="still-here">__Still Plugging Away__</a> by gman999

We are still moving along.

Attila began working on the next Tor Browser release yesterday.

[Dirty Statistics](dirty-stats.html) are still being updated and tweaked. More reports are in the pipeline.

Some inferences from the Dirty Statistics reports:

* 'Bandwidth Ranking by Country Code' shows a disturbing concentration of public Tor bandwidth. The recent chatter in France about banning Tor would have a disastrous effect on available bandwidth, with a quarter of Tor bandwidth being from there. Two other countries, Germany and the Netherlands, also provide double-digits of Tor bandwidth. Lack of diversity is a critical Achilles' Heel.

* 'Bandwidth Ranking by Operating System Platform' continues to illustrate our main motivation, over 93% of Tor bandwidth is running on one Linux distro or another. Interestingly, FreeBSD is a strong second at over 5.6% of public bandwidth, with the next contender being OpenBSD at under .5%. Those BSD numbers are fascinating since in terms of quantity of relays, Windows far exceed the BSDs.

* 'Exit Relays by Country Code' shows that even though the US provides under 10% of public Tor bandwidth, it accounts for almost 18% of exit relays with Germany being distantly in second place with under 12% of exit relays. France, despite dominating in public bandwidth, only accounts for less than 9% of exit relays.

* 'Total Relay Count by Operating System' illustrates the hard numbers of public Tor relays by operating system. Windows maintains second place, with FreeBSD and OpenBSD occupying third and fourth places. Besides displaying the Linux monoculture, it also illustrates that a lot of Windows users, most likely running relays with the Tor Browser client software, are contributing relays.

* 'Relay Count by Country Code' shows the disturbing concentration of public relays with three countries, Germany, the US and France, having double-digits in relays. In terms of distribution, having as many countries as possible get up to having 1% of relays would be ideal, but not by decreasing the number of public relays in the top entries.

* 'Countries without Public Tor Relays' generally hovers between the high-70's to the mid-80's in numbers. Of course, in a lot of those countries it's dangerous or just cost-prohibitive to run relays, yet it is likely that Tor isn't well-known enough in some of them. If you are in one of those countries, drop us a note on why running a public Tor relay is difficult. If you know someone in one of those countries, ask them yourself and let us know.

Remarkably, Tor Browser 5.03 is still functional on OpenBSD/amd64 with the #1783 snapshot from December 27th. Snapshots frequently take hard twists and turns, as is to be expected with the development branch of any operating system, so this is something of a surprise. The early releases of __TDP's__ 5.03 faced some hiccups with various changes, but we are trouble-free since.

One thing to note is that the number of public *BSD Tor relays, not including BitRig, remains consistently above 5% of total relays. While we can't necessarily attribute to __TDP__, we like to think the noise we make helped a little bit.

Stay tuned. We are still very active, even when we are publicly quiet.

###20151216###

<a id="notes-from-the-front">__Notes From The Front__</a> by attila

First: hats off to gman999 for his incessant efforts in getting the content of this site in better shape. I especially applaud this low-tech/no-tech blog layout in MultiMarkdown.

I have been noticeably lacking, but not totally idle.  I've had to take some paying work, which has slowed me down on open source, but my path forward is fairly clear.  My main task is to rework the makefiles (mainly the stuff in Makefile.inc) that comprise the [OpenBSD ports](https://github.com/torbsd/openbsd-ports/) for TBB so that they dovetail with and use as much as possible of the Mozillan infrastructure already in the OpenBSD ports tree, much of it due to `landry@`, who has already helped me a couple of times.  I should've done this from the beginning but my head wasn't really on straight when I first started this.  I've been reticent about touching anything that I didn't write, choosing instead to adapt what others have done to get something working. Although this was perhaps effective in the short term if we want this in the tree it has to be consonant with it... in short: if you're serious about contributing to OpenBSD then pick up a shovel and start digging, but politely. I'm sure I can do that so I just have to get to it.

I hope to have a first cut at a rework of the ports, still based on 5.0.3, sometime next week... I don't really celebrate any holidays so I'm hoping to get a lot done while the rest of the world sleeps it off.  Once the makefiles are closer to right I'll work on an update to 5.0.5 (or whatever is current on the 5.0.x branch).  I'm afraid I might miss the next ports lock window because I've taken too long, but oh, well... _que sera sera_.

<a id="pp-announce">__Announcing Porting PETs__</a> by gman999

One of the small projects we have spent some time on recently is <a href="porting-pets.html">Porting PETs</a>. This is an attempt to list the various privacy-enhancing applications and their statuses in the BSD ports.

Most of these ports arose as non-commercial, open source reactions to mainstream applications and services. Some are ported to one BSD or another, others are not.

The list is not exhaustive, but it was certainly exhaustive to create. Updates will happen manually, so <a href="https://github.com/torbsd/torbsd.github.io/issues/">diffs</a> are appreciated.

Porting third-party applications is a frequent gateway for BSD users to become developers, this list will be circulated in the relevant BSD channels.


###20151202###

<a id="2016-events">__Thinking About 2016 __</a> by gman999

The BSDCan 2016 [call for papers](https://www.bsdcan.org/2016/papers.php) was issued yesterday, and a __TDP__-related submission was made. BSDCan is likely the largest BSD gathering globally, and an excellent opportunity to speak to *BSD developers and users.

EuroBSDCon 2016 [is tentatively slated for September 2016](https://2016.eurobsdcon.org/) in Belgrade, Serbia. It is another significant BSD event, attracting users and developers from Europe and beyond. At a glance, there are only two Tor relays in Serbia, and both are Linux. Beyond Serbia, there are few Tor relays in the Balkan states overall, making EuroBSDCon 2016 a great opportunity to extend not just BSD Tor relays, but *any* Tor relays.

No dates have been set for [AsiaBSDCon](https://2016.asiabsdcon.org/), but it's usually in March. Japan is well-wired with inexpensive residential broadband, yet there are only around 50-60 relays in the country. Considering it's a BSD-heavy nation, it's shocking that there are only a handful of *BSD relays. Yet another green field of opportunity.

Stay tuned. Whether we can speak at any of these events will also depend on financial support for __TDP__.

###20151119####

<a id="pets-ports">__PETs Porting Targets__</a> by gman999

After the June 2013 Snowden disclosures, a rush towards developing applications to counter mainstream, closed-source services commenced. Many focuse on Debian Linux as a development platform, but aim at more widely used Windows, OSX, iOS and Android user-base. Beyond client applications, there are also network-based servers and services seeking to provide privacy and anonymity.

The term "PETs" refers to privacy-enhancing technologies, and in this case, we use it as a catch-all for these server and client solutions.

Some of these projects have been ported to one or more BSD.  Others have not. On that note, we began a [list of applications and their status as BSD ports in the main BSD operating systems](porting-pets.html). We encourage feedback on this list, and also investigations into porting these applications. Some of well-worth reviewing and considering; others have ceased development or are broken beyond resurrection. Others just need some reworking towards sanity, as one will notice that ubiquitous build dependency [bash](https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=bash).

It's a call for engagement to the *BSD community.  Bring your sane, portable development approaches, your intransigent working and reworking of Makefiles, your austere mentality. This is an opportunity to improve applications whose user base might be someone whose life depends on it.

###20151112###

<a id="br-case">__The Case of Brazil Relays__</a> by gman999

Just a short note about the Brazil relays implemented after [BSDCon Brasil](http://2015.bsdcon.com.br/). Before the early October conference, it seems there was only one public Tor relay. After the event, there are up to five or six relays maintained by two separate individuals. It's understood that some bridges also joined the Tor network also, but we don't have any direct evidence.

It's not an enormous leap in relay numbers for Brazil, but adding a handful of relays to a country that only had around 20 is significant. More importantly, it seems that the new BSD relays contribute a decent amount of bandwidth.

However, there is a discrepancy between the "Tor Status" data provided by [https://torstatus.blutmagie.de/](https://torstatus.blutmagie.de/) and [https://torstatus.rueckgr.at](https://torstatus.rueckgr.at/). Part of this might be answered by the fact that both are statically updating at different intervals. Olaf Selke of BlutMagie.de, also notes that the "observed bandwidth" numbers are diffferent since only BlutMagie.de [shows the average bandwidth based on the "extra-info" descriptor](https://lists.torproject.org/pipermail/tor-talk/2015-November/039414.html) while other sites, including Rueckgr.at, display the peak bandwidth.

However, there still seems to be discrepancies beyond the "observed bandwidth" field, which we will look at further in the future. For instance, a bunch of AWS Tor relays appeared on BlutMagie.de the other day and remained for a few days, but never showed up on Rueckgr.at. And more oddly, all the relays quickly remained highest bandwidth providers for a few days, in contrast to the normal trajectory of a relay.

For now, either site is useful for giving a broad picture of the public Tor network. It is true that the Brazil relays look at a lot more significant in terms of observed bandwidth at Rueckgr.at.

###20151111###

<a id="tb-update-again">__TB 5.0.3 Packages Updated, Again__</a> by gman999

The <a href="http://mirrors.nycbug.org/pub/snapshots/packages/amd64/">Tor Browser 5.0.3 packages</a> were updated again, due to the need for icu4c version 56.1. Both devel/nspr and textproc/icu4c are updated in the OpenBSD ports tree, and the TB packages have been rebuilt for them. Be sure to make sure packages or ports are updated before installing. If the host is updated, there's no need to use our devel/nspr or textproc/icu4c packages.

This is all a true story of the constant attention necessary to develop sanely on any operating system: develop on the most current version, and look forward to an automated build process for it, but ultimately a stable version is a beautiful thing.

###20151108###

<a id="dirty-reports">__Coming Soon: Quick-and-Dirty Reports__</a> by gman999

This week we'll post "Quick-and-Dirty Reports," providing diversity-related snapshots of the public Tor network. Currently, the five reports are generated manually from the [ruckgr.at Tor Status](https://torstatus.rueckgr.at/) [CSV files](https://torstatus.rueckgr.at/query_export.php/Tor_query_EXPORT.csv), but they are being migrated to SQLite in the future.

A quick sample of the current reports were posted in an [earlier blog entry](#beyond-os).

The only comparable service we know of is the [Tor Metrics site](https://metrics.torproject.org/) which has the additional function of providing historical data. Our goal is considerably more mundane, yet also functional.

Nothing ground-breaking or revolutionary about the reports, but we do hope others find them useful, and maybe event extend their use.

###20151104###

<a id="repro-builds">__Thoughts on Reproducible Builds__</a> by gman999

Just a quick link to a pleasantly polemical post from September 19th by [OpenBSD's](http://www.openbsd.org) tedu@ entitled [reproducible builds are a waste of time](http://www.tedunangst.com/flak/post/reproducible-builds-are-a-waste-of-time). There's a follow-up postscript at the end of the post, reacting to a [lobste.rs thread](https://lobste.rs/s/5bbdbo/reproducible_builds_are_a_waste_of_time).

###20151103###

<a id="up-to-you">__It's Up to You__</a> by gman999

Since we launched __TDP__, two of us spend a lot of time, energy and resources getting the various projects designed and implemented.

But there's is always room for one, two, three more.

It's a perfect opportunity to start testing Tor Browser 5.0.3. [Fork the repository](https://github.com/torbsd/openbsd-ports), submit [issues](https://github.com/torbsd/openbsd-ports/issues) about the software.

There's more to do beyond TB though. If you are around a technical user group, get a discussion going about Tor. Have a how-to meeting on running a public relay, especially for those who have access to decent infrastructure and bandwidth, like those at universities or internet-facing firms.

Setting up a high-bandwidth Tor bridge is painless and it will just be a safe gateway for Tor users.

There is no excuse why every BSD user group or conference shouldn't have a discussion or session focused on "recruiting" BSD people to run Tor relays. Many people in the US, Europe and eastern Asia, in particular have excess bandwidth at home. Work at a firm that uses the BSDs in production? Get them to run a relay or two.

For those who dwell in BSD land, join the [Tor-BSD mailing list](http://lists.nycbug.org/mailman/listinfo/tor-bsd). Running a BSD Tor relay?  Join the [unofficial BSD Buildbot for Tor](http://buildbot.pixelminers.net).

There's a lot we'd like to accomplish with __TDP__, and we don't claim a monopoly on much of anything. We do encourage you to take some initiative and move things forward.

###20151031###

<a id="tb-update">__Updated Tor Browser Packages__</a> by gman999

The upstream code from the Tor Project and above them Mozilla is a moving target we contend with each release. Then there is the ultimate moving target: the incessant war between surveillance and anonymity, censorship and circumvention. Finally there is the operating system as a moving target all Tor Browser porters face.

Developing ports on OpenBSD means building on snapshots, a.k.a., [-current](http://www.openbsd.org/faq/faq5.html#Flavors). OpenBSD snapshots are often released several times a week, and as with any other development operating system branch, those changes are sometimes significant. What might work today may be broken tomorrow. It was no surprise that our TB 5.0.3 release was broken on the OpenBSD snapshot released just a few days later.

[Daniel Jakots](https://lists.torproject.org/pipermail/tor-talk/2015-October/039360.html) noticed this as we did, and we updated the Tor packages accordingly. We made an added change by removing the tbb meta-package, simplifying the 5.0.3 release a bit more.

###20151030###

<a id="relay-guides">__The BSD Relay Guides__</a> by gman999

In their current forms, the [BSD relay guides](relay-guides.html) are unclear and sloppy, and possibly inaccurate in some places. We are putting some work into the [FreeBSD Guide for Configuring Relays](fbsd-relays.html), and will probably divide it into two parts: the short version for the impatient, with other topics being migrated to another page entiled "Advanced."

There is a lot of related topics to cover: to ZFS or not, slimming down a FreeBSD build, etc.

Input is welcomed. Stay tuned.

###20151029###

<a id="first-bells">__Our First Bells__</a> by gman999

Over six months ago we launched __TDP__ in its current form. In March, the [GitHub repository] (https://github.com/torbsd) was initialized and we put some meat on the skeleton we had been toying around with.

We count a lot of accomplishments since launching, but should be honest about __TDP's__ weakest point: marketing and publicity. Of course, it's something we're proud of to an extent. Too many open source projects focus almost solely on publicity, and don't actually accomplish much else. Nevertheless, we will try to start providing a clearer picture of our progress and notes here.

Quite frankly in BSD land, all fluff and no product doesn't get you much credibility. Talk is considered cheap, while good code and real contributions are priceless.

We announced the sixth release of Tor Browser two days ago, version 5.0.3, which was a major milestone for us. We were excited by some of the [feedback](https://lists.torproject.org/pipermail/tor-talk/2015-October/039351.html) on the Tor-talk.

The [presentation](20151010-br/index.html) at [BSDCon Brasil](http://2015.bsdcon.com.br) was a success, with the first BSD relays launched in that country, and which now account for up to a third of observed Tor bandwidth there. More relays should be coming online in Brazil soon, and we know of a few BSD bridges that came online.

Interestingly, one of the relays running on a residential connection, had to be migrated to a bridge. Apparently, one of the relay admin's online services blocked the relay's IP. The IP wasn't an exit relay, but it was a public Tor IP. Let's hear it for collective punishment.

Finally, we will be catching up with the publicity we should have previously done in the near future. Bear with this blog's format, we are not really the WordPress types, if that wasn't already apparent.

###20151028###

<a id="beyond-os">__Beyond OS Diversity__</a> by gman999

__TDP__ focuses on operating system diversification for Tor with BSD Unix. But the need for diversity is more than just operating systems. A quick browse at [one of the Tor Status sites](https://torstatus.rueckgr.at), or more specifically the [Network Statistics Graphs](https://torstatus.rueckgr.at/network_detail.php), the lack of geographical diversity is disturbing.

Parsing the list of Tor relays, there are a number of ISO 8166-1 two-digit country codes [that have no relays](tor-less-ccs.txt). Spreading the Tor network out to those countries should be a primary concern, regardless of operating system.

* Antigua & Barbuda (AG), that hub of online gaming, has no relays?

* Angola (AO), whose capital Luanda is one of the more hopping cities in southern Africa now?

* Jordan (JO), which is apparently one of the better connected locations in the region?

* Latin America and Africa are particularly underrepresented. And for Brazil with over 200 million people and a developed infrastructure, possessing under 30 relays is shocking.

* Pakistan (PK), has no public Tor relays, and India (IN) has under ten, although we're working on the latter case.

We don't know the particulars of infrastructure, connectivity costs, etc., in a lot of those countries, but the underrepresented regions need a dedicated focus.

Also disturbing is the concentration of public relays [by country code](relays-by-cc.txt). Germany and the US contain more than a thousand relays each, accounting for more than a third of the total number of Tor relays globally.

Of course, using Tor in some of those places may be dangerous or cost prohibitive.

We will continue to tinker with the data about geographical diversity in the future, but in the meantime, if you have contacts, friends or families in the underrepresented country codes, now is the time to explore the possibility of getting Tor relays into the Tor-less country codes.

###20151026###

<a id="tb-5.0.3">__Tor Browser version 5.0.3 for OpenBSD__</a> by gman999

__The Tor BSD Diversity Project (TDP)__ is proud to announce the release of Tor Browser (TB) version 5.0.3 for OpenBSD.

__[TDP](https://torbsd.github.io)__ is an effort to extend the use of the BSD Unixes into the Tor ecosystem, from the desktop to the network.

The 5.0.3 release is the sixth release of the Tor Browser from __TDP__.

To install TB for OpenBSD, please see [http://mirrors.nycbug.org/pub/snapshots/packages/amd64/README](http://mirrors.nycbug.org/pub/snapshots/packages/amd64/README).

__TDP__ is focused on diversifying the Tor network, with TB being the flagship project. Additional efforts are made to increase the number of *BSD relays on the Tor network.

Since its launch in March 2015, __TDP__ contributed significantly. In addition to the TB releases, both BSDCan and BSDCon Brasil featured __TDP__-focused meetings.

In early October, a __TDP__ [presentation](20151010-br/index.html) prompted a significant increase in Brazilian Tor relays. Before the presentation, there were around 22 Tor relays, all of which were Linux in addition to two Windows nodes.

In the weeks after the presentation, several new *BSD Tor relays appeared, accounting for up to 35% of observed Tor bandwidth in Brazil.

Finally, __TDP__ is working to convince BSD-using businesses to follow Mozilla's December 2014 example to run Tor relays. At this point, New York Internet has committed to running two high-bandwidth relays, one FreeBSD and the other OpenBSD, at its facility in Bridgewater, New Jersey.

__TDP's__ source code repository resides at [https://github.com/torbsd](https://github.com/torbsd).

__TDP__ is seeking funding to continue and extend its efforts. Please contact us if interested in assisting __TDP__, allowing us to dedicate more time to the project.

###<a id="attic">From the Attic</a>###

Attila blog post on [OpenBSD Tor Browser Ports Status Update: July 2015, 4.5.3 (yes, I know it's August)](http://trac.haqistan.net/blog/tor-browser-ports-progress-3)

Attila blog post on [OpenBSD Tor Browser Ports Status Update: June 2015, v4.5.2](http://trac.haqistan.net/blog/tor-browser-ports-progress-2)

Attila blog post on [OpenBSD Tor Browser Port Progress and Status](http://trac.haqistan.net/blog/tor-browser-ports-progress)

Attila blog post on [Adventures in Ports: The Tor Browser](http://trac.haqistan.net/blog/adventures-ports-tor-browser)

Early Rings ["Porting Tor Browser to the BSDs" thread on Tor-BSD list](http://lists.nycbug.org/pipermail/tor-bsd/2015-February/000225.html)

{{footer.md}}
