---
title: How to Check Mailbox Size of All Accounts in Zimbra
date: 2011-05-09 00:00:00 Z
categories:
- zimbra
tags:
- mail
- server
- zimbra
layout: post
status: publish
type: post
meta: {}
---

Open you VIM to write down below script and execute it.&nbsp;

```
#!/bin/bash 
all_account=`zmprov gaa`
for account in ${all_account} do mb_size=`zmmailbox -z -m ${account} gms`
echo "Mailbox size of ${account} = ${mb_size}"
done
```
