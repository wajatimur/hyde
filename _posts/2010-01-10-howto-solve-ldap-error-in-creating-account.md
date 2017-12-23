---
title: Howto Solve LDAP Error in Creating Account
date: 2010-01-10 00:00:00 Z
published: false
categories:
- linux
tags:
- ldap error
- object class
- uidnumber
- zimbra
layout: post
status: pending
type: post
meta: {}
---

Check object class first :

> zmprov gacf | grep ObjectClass zimbraAccountExtraObjectClass: amavisAccount zimbraAccountExtraObjectClass: posixAccount zimbraAccountExtraObjectClass: sambaSamAccount zimbraAccountExtraObjectClass: sambaAccount

Remove optional object class :

> zmprov mcf -zimbraAccountExtraObjectClass posixAccount zmprov mcf -zimbraAccountExtraObjectClass sambaAccount zmprov mcf -zimbraAccountExtraObjectClass sambaSamAccount

