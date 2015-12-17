Title: The Tor-BSD Diversity Project : Documentation Style Guide
CSS: torbsd.css
Author: gman
Editors: attila
Date: 2015-05-14
Note: These lines at the top are multimarkdown metadata; leave them.
{{meta.md}}

{{header.md}}

## Documentation Style Guide ##

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

### Base Operating System Commands ###

When base programs are referenced, they are appended with a number, representing the relevant manual page.

Example:

>ls(1)

That particular manual page can be accessed by typing:

>$ man 1 ls

The standard manual page sections are:

1  General commands (tools and utilities).  
2  System calls and error numbers.  
3   Libraries.  
3f  Fortran programmer's reference guide.  
3p  perl(1) programmer's reference guide.  
4   Device drivers.  
5   File formats.  
6   Games.  
7   Miscellaneous.  
8   System maintenance and operation commands.  
9   Kernel internals.  


### Edits/Additions/Deletions from Files ###

The standard notation for adding lines is the plus symbol `+`

Example:

```
>+*add this line*
```

Removing lines is indicated by the minus symbol `-`

Example:

```
>-*remove this line*
```

### Output from Commands ###

After a command is run, there is often expected output that is displayed on the screen which is indicated by *italics*. In this example, Tor is restarted.

Example:

```
>$ sudo /etc/rc.d/tor restart  
*tor(ok)*  
*tor(ok)*  
$ 
```

{{footer.md}}
