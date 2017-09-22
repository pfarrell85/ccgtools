
Creative Collisions Group Tools
===============================

This project is a set of tools to use for development and resources for managing linux servers.



Disable SSH Root Login
======================

[Original Resource](https://www.howtogeek.com/howto/linux/security-tip-disable-root-ssh-login-on-linux/)

Allowing users to login as root over ssh is a big security hole.  You can disable this whole by disallowing
root login over ssh.  Make sure you add your user to the sudoers list before you do this though!

	vi /etc/ssh/sshd_config

Find this section in the file, containing the line with “PermitRootLogin” in it to disable root login over ssh.

	#LoginGraceTime 2m
	#PermitRootLogin no
	#StrictModes yes
	#MaxAuthTries 6

Uncomment the PermitRootLogin line and change the value to `yes`.

	PermitRootLogin yes

Now restart the sshd service.

	systemctl restart sshd


Linux Firewall UFW
==================

[Original Resource](https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands)

Linux includes a firewall called ufw.  You can use to manage connections into and out of the system.

Encryption
==========

[Why to use IV](https://stackoverflow.com/questions/11821195/use-of-initialization-vector-in-openssl-encrypt#12486940)

[Why to use a salt](https://security.stackexchange.com/questions/23230/i-dont-see-how-salt-in-the-openssl-command-line-tool-enhances-security-at-al#23233)

The point of the salt is to prevent precomputation attacks, such as rainbow tables. Without a salt, anyone could just generate a huge dictionary of hashes and their associated plaintexts, and immediately crack any known hash. With the salt, such a dictionary is useless, since it's infeasible to generate such a dictionary for all possible salts.

OSX DHCP Server
===============

[Source](https://www.swissns.ch/site/2014/05/running-mac-os-xs-built-in-dhcp-server/)

Mac OS X comes with a built-n DHCP server called bootpd.  It does both DHCP and BOOTP.

To setup the server, you need to create a configuration file for the server. The file should be stored in:

	/etc/bootpd.plist

Start the Server
----------------

	sudo /bin/launchctl load -w /System/Library/LaunchDaemons/bootps.plist

Stop the Server
---------------

	sudo /bin/launchctl unload -w /System/Library/LaunchDaemons/bootps.plist

Static IP Address Assignments
-----------------------------

If you want to create static assignments, so that a given device always has the same IP address, you need to create a file called 

	/etc/bootptab

There’s a small sample of the file below. For more information, run:

	man bootptab

Make sure you include the %% at the top of this file.

	%%
	# machine entries have the following format:
	#
	# hostname      hwtype  hwaddr              ipaddr          bootfile
	client1         1       00:01:02:03:04:05   10.0.0.20
	client2         1       00:a0:b2:ef:ff:0a   10.0.0.20