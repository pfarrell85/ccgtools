
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

