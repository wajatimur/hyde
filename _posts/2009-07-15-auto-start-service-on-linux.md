---
layout: post
title: Auto Start Service on Linux
categories:
- linux
tags:
- auto
- linux
- service
- redhat
- debian
- services
status: publish
type: post
published: true
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
