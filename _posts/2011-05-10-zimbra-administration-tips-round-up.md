---
layout: post
title: Zimbra Administration Tips Round-Up
categories:
- zimbra
tags:
- admin
- cli
- linux
- zimbra
status: publish
type: post
published: true
meta: {}
---
Import Tarred Mailbox using following command line;

```
zmmailbox -z -m user@domain.com pru "//?fmt=tgz&resolve=reset" /tmp/filename.tgz or curl -k -u admin:PASSWORD --data-binary @/path/to/USER-account.tgz "https://MAILSTORE-FQDN:7071/service/home/USER@DOMAIN/?fmt=tgz&resolve=skip"
```

Export (Archive) mailbox into Tarred;

```
zmmailbox -z -m getRestURL "//?fmt=tgz" > /tmp/.tar.gz
```

Put Zimbra to maintenance mode : # zmprov md mydomain.com zimbraDomainStatus maintenance to reactivate : zmprov md mydomain.com zimbraDomainStatus active to get status;&nbsp;

```
zmprov gd mydomain.com | grep -i zimbraDomainStatus
```

Empty mailbox;

```
zmmailbox -z -m ef /Inbox
```
