---
layout: post
title: How to remove all (dot) files in linux
categories:
- linux
tags:
- command
- files
- linux
- delete
- remove files
status: publish
type: post
published: true
meta:
  _thumbnail_id: '39'
---
This ommand will remove all the dot files without removing top level directory. This command tested on Centos 5 and usually applicable to all Linux distros.

```
rm -rf .[^.]* && rm -rf ..?*
```
