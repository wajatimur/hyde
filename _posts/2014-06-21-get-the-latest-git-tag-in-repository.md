---
title: Get The Latest Git Tag in Repository
date: 2014-06-21 00:00:00 Z
categories:
- scm
tags:
- git
- latest
- recent
- single
- tag
layout: post
status: publish
type: post
meta: {}
---

The command will return the most recent single tag in git repository.

```
git describe --tags `git rev-list --tags --max-count=1`
```

More detail at [Coderwall](https://coderwall.com/p/zfw0fq)

