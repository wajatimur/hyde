---
layout: post
title: Simple DNS Server and Caching for Centos Using dnsmasq
categories:
- linux
tags:
- dnsmasq
- dns
- linux
- centos
- cache
- dhcp
- forwarder
- local
status: publish
type: post
published: true
meta: {}
---
_dnsmasq_ is a very light DNS forwarder and capable of serving as DHCP server. It's also can be configure as a simple DNS server with a caching capability.

On Centos distro, the _dnsmasq_ package can be install using following command, this step is compulsary.

```
yum install dnsmasq
```

After successfully installd the package, we need to edit the Centos DNS resolution file in `/etc/resolve.conf` using your favorite editor. Make sure you have the following line.

```
nameserver 127.0.0.1 
nameserver 8.8.8.8
```

The first line must be pointing to local IP address, the second line is acting as backup if no local DNS server it will forward the DNS packet to appropriate public DNS server. Now let's start the dnsmasq sevice.

```
/etc/init.d/dnsmasq start
```

Edit the configuration file in `/etc/dnsmasq.conf` and makesure following setting is in there.

```
listen-address=127.0.0.1
port=53
domain-needed
bogus-priv
cache-size=1000
```
