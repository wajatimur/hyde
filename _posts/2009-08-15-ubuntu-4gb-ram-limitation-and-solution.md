---
title: Ubuntu 4GB Ram Limitation and Solution
date: 2009-08-15 00:00:00 Z
categories:
- general
tags:
- 4gb
- memory limit
- ubuntu
layout: post
status: publish
type: post
meta: {}
---

 **Option # 1:** Use 64 bit Ubuntu Linux 64 bit Linux kernel will take care of 4G or more memory. Just grab latest 64 bit version and install it.

**Option #2:** Install PAE enabled kernel

Open terminal and type the following command:

```
sudo apt-get update 

sudo sudo apt-get install linux-headers-server linux-image-server linux-server 

sudo reboot
```

To check and verify increment of the memory by using following command.

```
free -m
```
