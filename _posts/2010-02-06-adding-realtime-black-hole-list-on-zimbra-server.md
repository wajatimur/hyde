---
title: Adding Realtime Black-hole List on Zimbra Server
date: 2010-02-06 00:00:00 Z
published: false
categories:
- linux
tags:
- amavis
- rbl
- spam
- zimbra
layout: post
status: pending
type: post
meta: {}
---

RBL (Real time black-hole lists) can be turned on or off in SpamAssassin from the Zimbra CLI. The three RBL’s that are enabled during installation are the following: • reject\_invalid\_hostname • reject\_non\_fqdn\_hostname • reject\_non\_fqdn\_sender

You can set the following, in addition to the three above: • reject\_rbl\_client dnsbl.njabl.org • reject\_rbl\_client cbl.abuseat.org • reject\_rbl\_client bl.spamcop.net • reject\_rbl\_client dnsbl.sorbs.net • reject\_rbl\_client sbl.spamhaus.org • reject\_rbl\_client relays.mail-abuse.org

To turn RBL on 1. Log on to the server as 'zimbra' 2. Enter zmprov gacf | grep zimbraMtaRestriction, to see what RBLs are set. 3. To add any new RBL types, you must list the existing RBLs and the new RBLs all in one command as: zmprov mcf zimbraMtaRestriction [RBL type]

To add all the possible restrictions, the command would be

zmprov mcf / zimbraMtaRestriction reject\_invalid\_hostname / zimbraMtaRestriction reject\_non-fqdn\_hostname / zimbraMtaRestriction reject\_non\_fqdn\_sender / zimbraMtaRestriction "reject\_rbl\_client dnsbl.njabl.org" / zimbraMtaRestriction "reject\_rbl\_client cbl.abuseat.org" / zimbraMtaRestriction "reject\_rbl\_client bl.spamcop.net " / zimbraMtaRestriction "reject\_rbl\_client dnsbl.sorbs.net " / zimbraMtaRestriction "reject\_rbl\_client sbl.spamhaus.org" / zimbraMtaRestriction "reject\_rbl\_client relays.mail-abuse.org"

Note: Quotes must be added to RBL types that are two words.

