---
layout: post
title: Howto Solve LDAP Error in Creating Account
categories:
- linux
tags:
- ldap error
- object class
- uidnumber
- zimbra
status: pending
type: post
published: false
meta: {}
---
Check object class first :

> zmprov gacf | grep ObjectClass zimbraAccountExtraObjectClass: amavisAccount zimbraAccountExtraObjectClass: posixAccount zimbraAccountExtraObjectClass: sambaSamAccount zimbraAccountExtraObjectClass: sambaAccount

Remove optional object class :

> zmprov mcf -zimbraAccountExtraObjectClass posixAccount zmprov mcf -zimbraAccountExtraObjectClass sambaAccount zmprov mcf -zimbraAccountExtraObjectClass sambaSamAccount

