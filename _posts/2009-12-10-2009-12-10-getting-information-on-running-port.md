---
layout: post
title: Getting Information on Running Port
categories:
- linux
tags:
- linux
- ports
- security
status: publish
type: post
published: true
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
