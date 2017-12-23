---
title: Auto Start Service on Linux
date: 2009-07-15 00:00:00 Z
categories:
- linux
tags:
- auto
- linux
- service
- redhat
- debian
- services
layout: post
status: publish
type: post
meta: {}
---

Redhat base distro for auto service start-up.

```
chkconfig httpd add 
chkconfig httpd off 
chkconfig httpd --del
```

Debian base distro for auto service start-up.

```
update-rc.d apache2 defaults 
update-rc.d -f apache2 remove
```
