---
layout: post
title: Howto Change Logo in Zimbra
categories:
- linux
tags:
- domain
- logo
- zimbra
status: pending
type: post
published: false
meta: {}
---
1.As the Zimbra user, type the following`- zmprov modifyDomain domainexample.com zimbraSkinLogoURL http://example.com``- zmprov modifyDomain domainexample.com zimbraSkinLogoLoginBanner http://imageserverexample.com/directory/logo_banner_name.png``- zmprov modifyDomain domainexample.com zimbraSkinLogoAppBanner http://imageserverexample.com/directory/banner_app_logo.png
`2.To apply the changes, type zmmailboxdctl restart

