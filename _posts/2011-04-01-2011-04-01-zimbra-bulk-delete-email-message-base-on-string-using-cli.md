---
layout: post
title: Zimbra Bulk Delete Email Message Base on String Using CLI
categories:
- linux
tags:
- mail
- mailbox
- message
- zimbra
status: publish
type: post
published: true
meta: {}
---
Generate file list of message to be delete.

```
zmmailbox -z -m admin@mdkl.gov.my s -l 1000 -t message "in:inbox content:root@mdkl" | awk '{ if(NR > 4){print}}' | cut -c7- | awk '{print $1","}' | tr -d '\n' > /tmp/delmessg
```

Delete message from list file :

```
/tmp/todel # zmmailbox -z -m admin@mdkl.gov.my dm `cat /tmp/todel`
```
