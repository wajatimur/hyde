---
layout: post
title: How to Check Mailbox Size of All Accounts in Zimbra
categories:
- zimbra
tags:
- mail
- server
- zimbra
status: publish
type: post
published: true
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
