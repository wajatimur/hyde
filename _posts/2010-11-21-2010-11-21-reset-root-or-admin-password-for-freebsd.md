---
title: Reset Root Or Admin Password For FreeBSD
date: 2010-11-21 00:00:00 Z
tags:
- admin
- freebsd
- password
- reset
- root
- bsd
layout: post
status: publish
type: post
meta: {}
---

BSD operating system is secured by default. It have a very good reputation of being the most secured Unix based OS compared to its sibling Linux OS.

As server administartor I have several experience whereby i can't remember my login password. Sometime it might happen when we typed a different character unconciously while setting it first time, really??

This workaround only can be done if you have an access to physical server. If were accessing using remote tool, you need to ask the server admin guy to do it for you by providing temporary password.

1. 

Restart the operating system.

2. 

Hit ESC when the OS boots up.

3. 

On boot option view, choose to boot into Single User Mode (option 4)

4. 

Select the default shell (/bin/sh).

5. 

When the machine is booted up and you see the prompt, enter following command ; `mount -u / * mount -a`

6. 

Type `passwd` command to reset the password.

7. 

Enter the new password and confirm it.

8. 

Type reboot to reboot the machine (or press the shutdown button to reboot)

Single user mode normally being used for adminstrative task purposes and it's the first runlevel after boot. Only `root` user can access this level.

All basic OS command tool is available in this stage except the program that relied on others services or networking connectivity as it's only available on the above runlevel (2-5).

This workaround might be same for others Linux based OS with a minor change of parameters or command.

