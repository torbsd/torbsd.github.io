##Redesigning Tor's Bandwidth Authority Setups##
###Towards Portability and Modularity with Maintainability###

Operating system-based, as opposed to directory-based.

Advantages: ease of updating, use of OS-based tools for security, updating

###Pre-Build Checks###

check install $PATH
    mount options on relevant partition
    space available on partition

check dependencies
    py-elixir (deprecated from OpenBSD ports in 2009)
    py-sqlalchemy
    pythonsqlite3
    move to stem?

###Build###

git clone torflow.git into $PATH
    create OpenBSD package for TorFlow?

torctl.git into torflow.git directory as submodule
    create OpenBSD package for TorCtl?
    toflow.git/add_torctl.sh


install Tor from pkgs/ports
    remove need for autoconf and automake

###Get and Update Data###

rewrite: NetworkScanners/BwAuthority/run_scan.sh
    runs once @reboot

rewrite: NetworkScanners/BwAuthority/cron.sh
    runs every 45 mins

insert both into cron

###Serve Data###

sshd chroot

www serving in chroot

relevant rulesets to restrict access by IP?

###Updating BwAuth Packages###

updating packages and tor repos, if not packages

###Reinstall###

cleanup and reinstall

###Tests###
