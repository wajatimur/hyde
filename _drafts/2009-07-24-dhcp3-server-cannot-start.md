---
layout: post
title: DHCP3 Server Cannot Start
categories:
- general
tags:
- appamors
- dhcp3
- permission
- problem
status: pending
type: post
published: false
meta: {}
---
DHCP3 Server Cannot Start Due to File Permission Denied Edit below file based on your access requirement. [rw] mean read+write and firstline is to give an app a capability to read and write the directory and second line if for the files inside.

/etc/apparmor.d/usr.sbin.dhcpd3:

/etc/bind/ rw, /etc/bind/\*\* rw,

