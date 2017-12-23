---
title: Getting Information on Running Port
date: 2009-12-10 00:00:00 Z
categories:
- linux
tags:
- linux
- ports
- security
layout: post
status: publish
type: post
meta: {}
---

The following command issued from the console determines which ports are listening for TCP connections from the network:

```
nmap -sT -O localhost
```

To check for port 834 using netstat, use the following command:

```
netstat -anp | grep 834
```

The lsof command reveals similar information since it is also capable of linking open ports to services:

```
lsof -i | grep 834
```
