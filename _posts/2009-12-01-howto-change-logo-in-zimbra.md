---
title: Howto Change Logo in Zimbra
date: 2009-12-01 00:00:00 Z
published: false
categories:
- linux
tags:
- domain
- logo
- zimbra
layout: post
status: pending
type: post
meta: {}
---

1.As the Zimbra user, type the following`- zmprov modifyDomain domainexample.com zimbraSkinLogoURL http://example.com``- zmprov modifyDomain domainexample.com zimbraSkinLogoLoginBanner http://imageserverexample.com/directory/logo_banner_name.png``- zmprov modifyDomain domainexample.com zimbraSkinLogoAppBanner http://imageserverexample.com/directory/banner_app_logo.png
`2.To apply the changes, type zmmailboxdctl restart

