---
layout: post
title: Zimbra And LDAP Tools
categories:
- linux
tags:
- ldap
- ldapsearch
- tools
- zimbra
status: pending
type: post
published: false
meta: {}
---
Get Zimbra LDAP root password :

> zmlocalconfig -s zimbra\_ldap\_password

Change Zimbra LDAP root password :

> zmldappasswd -r newpasss

LDAP Who Am I (Using simple authentication) :

> ldapwhoami -xW

LDAP search (Using simple authentication) :

> ldapsearch -x

