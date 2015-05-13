CSS: torbsd.css

# Documentation Style Guide #

This piece is meant to illustrate __TDP__ documentation. This is standard for all __TDP__ syntax in the tutorials and guides.

### Shell/Command-Line ###

All shell commands will be indicated by a dollar sign `$`, the default symbol of /bin/ksh, which a single-tab indent.

Example:

>$ *run this command*

### File Names and Paths ###

Both file names and paths are in __bold__, unless it is part of a shell command.

Examples:

>Change to the __/usr/ports/mystuff/openbsd-ports/www/tbb/tor-browser__ directory.

>Edit the __torrc__ file.

### OpenBSD Base Programs ###

When base programs are referenced, they are appended with a number, representing the relevant manual page.

Example:

>ls(1)

That particular manual page can be accessed by typing:

>$ man 1 ls

### Edits/Additions/Deletions from Files ###

The standard notation for adding lines is the plus symbol `+`

Example:

>+*add this line*

Removing lines is indicated by the minus symbol `-`

Example:

>-*remove this line*

### Output from Commands ###

After a command is run, there is often expected output that is displayed on the screen which is indicated by *italics*. In this example, Tor is restarted.

Example:

>$ sudo /etc/rc.d/tor restart  
*tor(ok)*  
*tor(ok)*  
$ 
