---
title: Howto Configure CoovaChilli Listening On Multiple Interfaces
date: 2012-06-28 00:00:00 Z
categories:
- linux
tags:
- coovachilli
- network
- vlan
- wireless
- wifi
- linux
layout: post
status: publish
type: post
meta:
  structured_content: '{"oembed":{},"overlay":true}'
---

Creat a VLAN interface using `ifcfg-vlan` filename with following content. The value of `IPADDR` and `NETWORK` must be reflect your current VLAN setup.

```
DEVICE=vlan 
IPADDR=192.168.100.1 
NETWORK=192.168.100.0 
NETMASK=255.255.255.0 
USERCTL=no 
BOOTPROTO=none 
ONBOOT=yes
```

Edit the physical ethernet file, the `eth0` were use as example and this value must reflect your current setting accordingly.

```
DEVICE=eth0
USERCTL=no
ONBOOT=yes 
MASTER=vlan 
SLAVE=yes 
BOOTPROTO=none
```

Following line must be add to `modprobe.conf` file to enable the VLAN device probing by the Linux OS.

```
alias vlan bonding options vlan mode=3 miimon=100
```

Change to below value in Chilli config file to fully enable the VLAN networking.

```
HS_LANIF=vlan
```
