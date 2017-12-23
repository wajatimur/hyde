---
title: Zimbra And LDAP Tools
date: 2009-12-24 00:00:00 Z
published: false
categories:
- linux
tags:
- ldap
- ldapsearch
- tools
- zimbra
layout: post
status: pending
type: post
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

