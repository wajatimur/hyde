---
layout: post
title: Get The Latest Git Tag in Repository
categories:
- scm
tags:
- git
- latest
- recent
- single
- tag
status: publish
type: post
published: true
meta: {}
---
The command will return the most recent single tag in git repository.

```
git describe --tags `git rev-list --tags --max-count=1`
```

More detail at [Coderwall](https://coderwall.com/p/zfw0fq)

