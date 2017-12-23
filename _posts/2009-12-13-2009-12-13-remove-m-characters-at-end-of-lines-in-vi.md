---
title: Remove ^M Characters At End Of Lines In vi
date: 2009-12-13 00:00:00 Z
categories:
- linux
tags:
- control
- linux
- vi
- "^M"
layout: post
status: publish
type: post
meta:
  structured_content: '{"oembed":{},"overlay":true}'
---

Sometime when converting text file from Windows to Linux will introduce unintended `^M` character for each of line.

```
:%s/^V^M//g
```

Tip: Pressing V and then M without releasing CTRL key.

