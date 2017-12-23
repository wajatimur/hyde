---
layout: post
title: Remove ^M Characters At End Of Lines In vi
categories:
- linux
tags:
- control
- linux
- vi
- "^M"
status: publish
type: post
published: true
meta:
  structured_content: '{"oembed":{},"overlay":true}'
---
Sometime when converting text file from Windows to Linux will introduce unintended `^M` character for each of line.

```
:%s/^V^M//g
```

Tip: Pressing V and then M without releasing CTRL key.

