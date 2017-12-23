---
title: Zimbra with Multiple Domains on Single Server
date: 2009-08-22 00:00:00 Z
categories:
- devop
tags:
- domains
- multi
- server
- zimbra
- domain alias
- email
- mail
- mta
layout: post
status: publish
type: post
meta: {}
---

Zimbra mail server can handle multiple domain using it aliasing feature. To add a new domain alias we can use the following Zimbra command line provisioning tool.

```
zmprov cd foobar.com zimbraDomainType alias
```

We have to setup a mail catch to forward all incoming email with new domain alias to existing email domain.

```
zmprov md foobar.com zimbraMailCatchAllAddress @foobar.com zimbraMailCatchAllForwardingAddress @foo.com
```

We can verify now by sending to existing email with new domain alias.

