---
title: Zimbra Multi Domain Login
date: 2009-09-09 00:00:00 Z
published: false
categories:
- linux
layout: post
status: pending
type: post
meta: {}
---

What your noticing is that the single domain specified in zimbraDefaultDomainName doesn't need to type @domain.com for login. If you have two domains what you can do is set a virtual host so by visiting mail.domainB.com they'd just type the username part. Quote: zmprov md domainB.com zimbraVirtualHostname mail.domainB.com (Where mail.domainB.com points to 2nd.server.name.com when resolved via DNS both internally and externally.)

Also, the server uses zimbraPublicServiceHostname to generate REST URLs, ie: briefcase, document, calendar sharing etc.

Say it's generating URL's like http:// 2nd.server.name.com and you'd rather have it http:// mail.domainB.com: Quote: zmprov md domainB.com zimbraPublicServiceHostname mail.domainB.com In 5.0.9+ REST URL's can now be composed of 3 attributes: zimbraPublicService[Protocol + Hostname + Port] to avoid dependency on zimbraServer objects.

