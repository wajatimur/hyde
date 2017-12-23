---
title: Howto Pull Docker Image in One Line
date: 2015-02-15 00:00:00 Z
categories:
- devop
tags:
- cli
- command line
- containers
- docker
- image
- refresh
- update
layout: post
status: publish
type: post
meta: {}
---

Currently Docker CLI tool only capable of pulling or refreshing a single image at one time, it's quite a problematic if were in need to refresh a numbers of image. This problem can be solve by using some others tool in Linux shell.

```
docker images | awk '{print $1}' | grep -v REPOSITORY | xargs -L1 docker pull
```
